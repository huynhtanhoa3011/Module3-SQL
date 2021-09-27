package model;

public class Transfers {
    int depoId;
    Double balance;
    int withId;

    public Transfers() {
    }

    public Transfers(int depoId, Double balance, int withId) {
        this.depoId = depoId;
        this.balance = balance;
        this.withId = withId;
    }

    public int getDepoId() {
        return depoId;
    }

    public void setDepoId(int depoId) {
        this.depoId = depoId;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public int getWithId() {
        return withId;
    }

    public void setWithId(int withId) {
        this.withId = withId;
    }
}
