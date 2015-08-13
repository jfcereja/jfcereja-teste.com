public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
		List<String> lista = new List<String>();
        for(integer x=0;x<n;x++){
            lista.add('Test '+x);
        }            
        return lista;
    }
}