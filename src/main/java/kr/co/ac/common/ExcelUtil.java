package kr.co.ac.common;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.validator.GenericValidator;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;

@Component
public class ExcelUtil {
	// 로그를 가져오기 위한 코드
	private final static Logger LOGGER = LoggerFactory.getLogger(ExcelUtil.class);
	
	// 각 셀의 데이터타입에 맞게 값 가져오기
    public String getCellValue(XSSFCell cell) {

        String value = "";
        
        if(cell == null){
            return value;
        }

        switch (cell.getCellType()) {
	        case STRING:
	            value = cell.getStringCellValue();
	            break;
	        case NUMERIC:
	            /* 기존 코드
	        	value = (int) cell.getNumericCellValue() + "";
				기존코드   */
	        	
	        	// 숫자를 문자열로 변환(수정부분)
	            value = String.valueOf(cell.getNumericCellValue());
	            break;
	        default:
	            break;
	    }
        return value;
    }

    // 엑셀파일의 데이터 목록 가져오기 (파라미터들은 위에서 설명함)
    public List<Map<String, Object>> getListData(MultipartFile file, int startRowNum, int columnLength) throws org.apache.poi.openxml4j.exceptions.InvalidFormatException {

        List<Map<String, Object>> excelList = new ArrayList<Map<String,Object>>();
        InputStream is = null;
        OPCPackage opcPackage = null;
        try {
        	
        	is = file.getInputStream();
        	opcPackage = OPCPackage.open(is);
            
            @SuppressWarnings("resource")
            XSSFWorkbook workbook = new XSSFWorkbook(opcPackage);

            // 첫번째 시트
            XSSFSheet sheet = workbook.getSheetAt(0);
            
            int rowIndex = 0;
            int columnIndex = 0;

            // 첫번째 행(0)은 컬럼 명이기 때문에 두번째 행(1) 부터 검색
            for (rowIndex = startRowNum; rowIndex < sheet.getLastRowNum() + 1; rowIndex++) {
                XSSFRow row = sheet.getRow(rowIndex);

                // 빈 행은 Skip
                //if (row.getCell(0) != null && !row.getCell(0).toString().isBlank()) {
                if(!GenericValidator.isBlankOrNull(String.valueOf(row.getCell(0)))){

                    Map<String, Object> map = new HashMap<String, Object>();

                    int cells = columnLength;

                    for (columnIndex = 0; columnIndex <= cells; columnIndex++) {
                        XSSFCell cell = row.getCell(columnIndex);
                        
                        // 널값을 빈 문자열로 처리하고, Integer를 String으로 변환
                        map.put(String.valueOf(columnIndex), getCellValue(cell));
                        //logger.info(rowIndex + " 행 : " + columnIndex+ " 열 = " + getCellValue(cell));
                    }
                    
                    excelList.add(map);
                }
            }

        } catch (InvalidFormatException e) {
        	LOGGER.error("InvalidFormatException 오류가 발생하였습니다.");
        } catch (IOException e) {
        	LOGGER.error("IOException 오류가 발생하였습니다.");
        } finally {
        	if (is != null) {
        		try {
					is.close();
				} catch (IOException e) {
					LOGGER.error("IOException 오류가 발생하였습니다.");
				}
        	}
        	if (opcPackage != null) {
        		try {
					opcPackage.close();
				} catch (IOException e) {
					LOGGER.error("IOException 오류가 발생하였습니다.");
				}
        	}
        }
        
        return excelList;
    }
    
    public static ByteArrayInputStream createListToExcel(List<LinkedHashMap<String, Object>> list) {
    	
    	List<String> excelHeader = null;
    	
    	if (!list.isEmpty()) {
    		excelHeader = new ArrayList<String>();
    		
    		Iterator<String> it = list.get(0).keySet().iterator();
    		
    		while (it.hasNext()) {
				excelHeader.add(it.next());
			}
    	}
    	
    	return createListToExcel(excelHeader, list);
    }
    
    public static ByteArrayInputStream createListToExcel(List<String> excelHeader, List<LinkedHashMap<String, Object>> list) {
        try (Workbook workbook = new HSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("sheet1");
            Row row;
            Cell cell;
            int rowNo = 0;
            
            //header 폰트
            Font font  = workbook.createFont();
            font.setBold(true);
            font.setFontHeightInPoints((short)11);
            font.setFontName("맑은 고딕");
            
            // 테이블 헤더 스타일 설정
            CellStyle headStyle = workbook.createCellStyle();
            
            // 경계선 설정
            headStyle.setBorderTop(BorderStyle.THIN);
            headStyle.setBorderBottom(BorderStyle.THIN);
            headStyle.setBorderLeft(BorderStyle.THIN);
            headStyle.setBorderRight(BorderStyle.THIN);
            
            headStyle.setAlignment(HorizontalAlignment.CENTER);
            headStyle.setFillForegroundColor(HSSFColorPredefined.GREY_25_PERCENT.getIndex());
            headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
            
            // 색상
            headStyle.setFillForegroundColor(HSSFColor.HSSFColorPredefined.GREY_25_PERCENT.getIndex());
            headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
           
            // 헤더 가운데 정렬
            headStyle.setAlignment(HorizontalAlignment.CENTER);
            headStyle.setFont(font);
            
            if (excelHeader != null) {
	            row = sheet.createRow(rowNo++);
	            for (int i=0; i<excelHeader.size(); i++) {
	                cell = row.createCell(i);
	                cell.setCellStyle(headStyle);
	                cell.setCellValue(excelHeader.get(i));
	            }
            }
            
            CellStyle cellStyle = workbook.createCellStyle();
    		cellStyle.setAlignment(HorizontalAlignment.CENTER);
    		cellStyle.setBorderTop(BorderStyle.THIN);
    		cellStyle.setBorderLeft(BorderStyle.THIN);
    		cellStyle.setBorderRight(BorderStyle.THIN);
    		cellStyle.setBorderBottom(BorderStyle.THIN);
    		
    		//내용 font
            Font BodyFont = workbook.createFont();
            BodyFont.setFontHeightInPoints((short)11);
            BodyFont.setFontName("맑은 고딕");
            cellStyle.setFont(BodyFont);
         
			if (list != null) {
				/** Body 내용 */
				for (int rownum = 0; rownum < list.size(); rownum++) {

					Row row2 = sheet.createRow(rownum + 1);

					for (int celnum = 0; celnum < excelHeader.size(); celnum++) {
						cell = row2.createCell(celnum);

						cell.setCellStyle(cellStyle);
						
						/*	기존코드
						String value = StringUtils.defaultString((String) list.get(rownum).get(excelHeader.get(celnum)));
						*/
						
						// 수정 코드
						//셀의 값이 Integer인 경우, 강제 형변환이 불가능하여 ClassCastException이 발생
						//해결 방법으로는 해당 셀의 값을 가져올 때, 명시적인 형변환 없이 그대로 가져오고, 필요한 경우에만 문자열로 변환
						//이렇게 수정하면 cellValue를 그대로 가져오며, 필요한 경우에만 문자열로 변환합니다. 따라서 Integer 등의 숫자 값이 들어있어도 정상적으로 처리
						Object cellValue = list.get(rownum).get(excelHeader.get(celnum));
						
						//null이면 엑셀파일도 null로 들어가기에 수정이 필요
						//String value = StringUtils.defaultString(String.valueOf(cellValue));
						
						//cellValue가 null이면 빈 문자열이 들어가게 된다.
						String value = (cellValue != null) ? cellValue.toString() : "";

						cell.setCellValue(value);

						if (rownum + 1 == list.size()) {
							sheet.autoSizeColumn(celnum);
							sheet.setColumnWidth(celnum, (sheet.getColumnWidth(celnum)) + 256);
						}
					}
				}
			}

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            workbook.write(outputStream);
            return new ByteArrayInputStream(outputStream.toByteArray());

        } catch (IOException e) {
        	LOGGER.error("IOException 오류가 발생하였습니다.");
            return null;
        }
    }
}

