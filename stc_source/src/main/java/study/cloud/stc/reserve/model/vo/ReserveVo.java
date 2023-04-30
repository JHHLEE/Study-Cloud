package study.cloud.stc.reserve.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@ToString
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReserveVo {
	
//	---------- -------- ------------ 
//	RSV_NUM     NOT NULL VARCHAR2(30)       
//	RSV_DATE    NOT NULL DATE 
//	RSV_PERSON  NOT NULL NUMBER       
//	MEM_ID      NOT NULL VARCHAR2(20) 
//	RSV_METHOD  NOT NULL VARCHAR2(4)
//	RSV_PAY_DATE         TIMESTAMP
//	RSV_AMOUNT           NUMBER
//	RSV_STATUS           NUMBER

	
	private int rsvNum;
    private Date rsvDate;
    private int rsvPerson;
    private String memId;
    private String rsvMethod;
    private Timestamp rsvPayDate;
    private int rsvAmount;
    private int rsvStatus;
 
}
