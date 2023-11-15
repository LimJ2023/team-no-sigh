package java1115;

public class Test06_Card {
	public static int cardNum = 0;
	public int cardID;
	public String cardName;
	
	public Test06_Card() {
		cardNum++;
		cardID = cardNum;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String name) {
		cardName = name;
	}
	
	
}
