package ch.noseryoung.blj;
public class Fish {

    private int x, y;
    private String fishName;
    private boolean isSalty;
    public Fish(String fishName, boolean isSalty, int x, int y) {
        this.fishName = fishName;
        this.isSalty = isSalty;
        this.x = x;
        this.y = y;
    }

    public String getFishName() {
        return fishName;
    }

    public boolean isSalty() {
        return isSalty;
    }

    public void setY(int y) {
        this.y = y;
    }

    public void setX(int x) {
        this.x = x;
    }


    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }
}