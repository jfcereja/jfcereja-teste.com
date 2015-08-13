@isTest
public class TestVerifyDate {
	@isTest static void test(){
        VerifyDate.CheckDates(Date.today(), Date.newInstance(1992, 11, 13));
        VerifyDate.CheckDates(Date.today(), Date.today()+31);
    }
}