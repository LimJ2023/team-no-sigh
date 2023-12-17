package chessgame.copy;

import java.util.LinkedList;

public class Piece {

	int xp;
	int yp;
	
	int x;
	int y;
	boolean isWhite;
	LinkedList<Piece> ps;
	String name;
	

	public Piece(int xp, int yp, boolean isWhite, String n,LinkedList<Piece> ps) {
		this.xp = xp;
		this.yp = yp;
		x = xp * 64;
		y = yp*64;
		this.isWhite = isWhite;
		this.ps = ps;
		name = n;
		ps.add(this);
	}
	
	public void move(int xp, int yp) {
		ps.stream().filter((p) -> (p.xp == xp && p.yp == yp)).forEachOrdered((p) -> { 
		p.kill();
		});
		this.xp = xp;
		this.yp = yp;
		x = xp*64;
		y = yp*64;
	}
	public void kill() {
		ps.remove(this);
	}
	
}
