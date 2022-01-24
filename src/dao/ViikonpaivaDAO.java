package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import kohdeluokat.Aikavaraus;
import tietokanta.Kysely;
import tietokanta.Paivitys;
import tietokanta.Yhteys;

public class ViikonpaivaDAO {
	public static void main(String[] args) {
		ViikonpaivaDAO dao = new ViikonpaivaDAO();
		//System.out.println(dao.haeAikaVaraukset());
		
	}
	
	
	public void poistaAikavaraus(String id) {
		Yhteys yhteys = new Yhteys();
		Paivitys paivitys = new Paivitys(yhteys.getYhteys());

		String sqlLause = 
				"DELETE FROM Aikavaraus WHERE id='" + id  +"';";
		System.out.println("JUKKA" + sqlLause);
		paivitys.suoritaSqlLause(sqlLause);
		yhteys.katkaise();
	}
	
	public void talletaAikavaraus(Aikavaraus aikavaraus) {
		Yhteys yhteys = new Yhteys();
		Paivitys paivitys = new Paivitys(yhteys.getYhteys());

		String sqlLause = 
"INSERT INTO Aikavaraus(viikonpaiva, kayttaja, aloitus_aika, lopetus_aika, aihe, sijainti)"
+ " VALUES('" + aikavaraus.getViikonpaiva() + "', '" + aikavaraus.getKayttaja() + "', '" + aikavaraus.getAloitusAika() +
"', '" + aikavaraus.getLopetusAika() + "', '" + aikavaraus.getAihe() +
"', '" + aikavaraus.getSijainti() + "');";
		System.out.println("JUKKA" + sqlLause);
		paivitys.suoritaSqlLause(sqlLause);
		yhteys.katkaise();
	}

	
	public ArrayList<Aikavaraus> haeMaanantainAikavaraukset(String nimi) {
		ArrayList aikavaraukset = new ArrayList();
		Yhteys yhteys = new Yhteys();
		Kysely kysely = new Kysely(yhteys.getYhteys());
		String sql = "SELECT * FROM Aikavaraus WHERE kayttaja='" + nimi + "' AND viikonpaiva='Maanantai'";
		System.out.println("JUKKA" + sql);
		kysely.suoritaYksittainenKysely(sql);
		// SLOTITUS
		
		Iterator iter = kysely.getTulosjoukko().iterator();
		while (iter.hasNext()) {
			HashMap varausMap = (HashMap) iter.next();
			Aikavaraus varaus = new Aikavaraus();
			int id = Integer.parseInt(varausMap.get("id") + "");
			varaus.setId(id);
			String kayttaja = (String) varausMap.get("kayttaja");
			varaus.setKayttaja(kayttaja);
			String viikonpaivaKannasta = (String) varausMap.get("viikonpaiva");
			varaus.setViikonpaiva(viikonpaivaKannasta);
			String aloitusAika = (String) varausMap.get("aloitus_aika");
			varaus.setAloitusAika(aloitusAika);
			String lopetusAika = (String) varausMap.get("lopetus_aika");
			varaus.setLopetusAika(lopetusAika);
			String aihe = (String) varausMap.get("aihe");
			varaus.setAihe(aihe);
			System.out.println(aihe);
			String sijainti = (String) varausMap.get("sijainti");
			varaus.setSijainti(sijainti);

			if(aloitusAika.equals("8:00") && lopetusAika.equals("10:45")) {
				Aikavaraus aikavaraus = null;
			}
			
			aikavaraukset.add(varaus);
		}
		
		
		return aikavaraukset;
	}

	public ArrayList<Aikavaraus> haeAikaVaraukset(String nimi, String viikonpaiva) {
		Yhteys yhteys = new Yhteys();
		Kysely kysely = new Kysely(yhteys.getYhteys());
		String sql = "SELECT * FROM Aikavaraus WHERE kayttaja='" + nimi + "' AND viikonpaiva='" + viikonpaiva + "'";
		System.out.println("JUKKA" + sql);
		kysely.suoritaYksittainenKysely(sql);
		
		Iterator iter = kysely.getTulosjoukko().iterator();
		ArrayList aikavaraukset = new ArrayList();
		while (iter.hasNext()) {
			HashMap varausMap = (HashMap) iter.next();
			Aikavaraus varaus = new Aikavaraus();
			int id = Integer.parseInt(varausMap.get("id") + "");
			varaus.setId(id);
			String kayttaja = (String) varausMap.get("kayttaja");
			varaus.setKayttaja(kayttaja);
			String viikonpaivaKannasta = (String) varausMap.get("viikonpaiva");
			varaus.setViikonpaiva(viikonpaivaKannasta);
			String aloitusAika = (String) varausMap.get("aloitus_aika");
			varaus.setAloitusAika(aloitusAika);
			String lopetusAika = (String) varausMap.get("lopetus_aika");
			varaus.setLopetusAika(lopetusAika);
			String aihe = (String) varausMap.get("aihe");
			varaus.setAihe(aihe);
			System.out.println(aihe);
			String sijainti = (String) varausMap.get("sijainti");
			varaus.setSijainti(sijainti);
			aikavaraukset.add(varaus);
		}
		yhteys.katkaise();
		return aikavaraukset;

	}
}
