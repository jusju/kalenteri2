package kohdeluokat;

public class Aikavaraus {
	private int id;
	private String viikonpaiva;
	private String aloitusAika;
	private String lopetusAika;
	private String kayttaja;
	private String aihe;
	private String sijainti;

	
	public Aikavaraus() {
		super();
	}

	



	public Aikavaraus(String viikonpaiva, String aloitusAika, String lopetusAika, String kayttaja, String aihe,
			String sijainti) {
		super();

		this.viikonpaiva = viikonpaiva;
		this.aloitusAika = aloitusAika;
		this.lopetusAika = lopetusAika;
		this.kayttaja = kayttaja;
		this.aihe = aihe;
		this.sijainti = sijainti;
	}





	public int getId() {
		return id;
	}





	public void setId(int id) {
		this.id = id;
	}





	public String getViikonpaiva() {
		return viikonpaiva;
	}


	public void setViikonpaiva(String viikonpaiva) {
		this.viikonpaiva = viikonpaiva;
	}


	public String getAloitusAika() {
		return aloitusAika;
	}


	public void setAloitusAika(String aloitusAika) {
		this.aloitusAika = aloitusAika;
	}


	public String getLopetusAika() {
		return lopetusAika;
	}


	public void setLopetusAika(String lopetusAika) {
		this.lopetusAika = lopetusAika;
	}


	public String getKayttaja() {
		return kayttaja;
	}


	public void setKayttaja(String kayttaja) {
		this.kayttaja = kayttaja;
	}


	public String getAihe() {
		return aihe;
	}


	public void setAihe(String aihe) {
		this.aihe = aihe;
	}


	public String getSijainti() {
		return sijainti;
	}


	public void setSijainti(String sijainti) {
		this.sijainti = sijainti;
	}





	@Override
	public String toString() {
		return "Aikavaraus [id=" + id + ", viikonpaiva=" + viikonpaiva + ", aloitusAika=" + aloitusAika
				+ ", lopetusAika=" + lopetusAika + ", kayttaja=" + kayttaja + ", aihe=" + aihe + ", sijainti="
				+ sijainti + "]";
	}

	
	
}
