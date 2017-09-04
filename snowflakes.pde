PFont f;

ArrayList<Snowflake> flakes;

void setup() {
  size(1500, 800);
  f = createFont("Arial", 16, true);

  flakes = new ArrayList<Snowflake>();

  for (int i = 0; i < 100; i++) {
    flakes.add(new Snowflake());
  }

}

void draw() {
  background(0);
  for(Snowflake s: flakes) {
    s.Move();
    s.Draw();
  }
}
