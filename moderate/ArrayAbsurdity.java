import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader in = new BufferedReader(new FileReader(file));
		String line;
		while ((line = in.readLine()) != null) {
			if(null != line && line.length() > 0){
				String[] initialBreak = line.split(";");
				String[] arrayValues = initialBreak[1].split(",");
	
				String duplicatedValue = null;
	
				for (int i = 0; i < arrayValues.length; i++) {
					for (int j = 0; j < arrayValues.length; j++) {
						if (j != i) {
							if (arrayValues[i].equals(arrayValues[j])) {
								duplicatedValue = arrayValues[i];
							}
						}
					}
				}
				System.out.println(duplicatedValue);
			}
        }
	}
}