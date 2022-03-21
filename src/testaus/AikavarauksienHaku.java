package testaus;

import java.util.ArrayList;
import static org.assertj.core.api.Assertions.assertThat;
import org.junit.jupiter.api.Test;
import dao.ViikonpaivaDAO;
import kohdeluokat.Aikavaraus;

class AikavarauksienHaku {

	@Test
	void testTietokantaanTallennus() {
		ViikonpaivaDAO dao = new ViikonpaivaDAO();
		boolean maanantailleOnVarauksia = false;
		ArrayList<Aikavaraus> aikavaraukset = new ArrayList<Aikavaraus>();
		aikavaraukset = dao.haeAikaVaraukset("Jukka", "Maanantai");
		if(aikavaraukset.size() > 0) {
			maanantailleOnVarauksia = true;
		} 
		String testi = "Jukka";
    	assertThat(maanantailleOnVarauksia);
	}
}
