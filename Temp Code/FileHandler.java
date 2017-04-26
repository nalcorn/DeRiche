package tests;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;

import javax.imageio.ImageIO;

public class FileHandler {
	
	public FileHandler() {
		try {
			convertBase64("data:image/png;base64,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");
		}
		
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static BufferedImage convertBase64(String s) throws Exception {
		
		String base64Image = s.split(",")[1];
		byte[] imageBytes = javax.xml.bind.DatatypeConverter.parseBase64Binary(base64Image);
		
		BufferedImage image = ImageIO.read(new ByteArrayInputStream(imageBytes));
		ImageIO.write(image, "png", new File("sig.png"));
		
		System.out.println(image);
		
		return image;
	}
	
	public static void main(String[] args) {
		new FileHandler();
	}
}
