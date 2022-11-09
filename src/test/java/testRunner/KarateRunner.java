package testRunner;


import com.intuit.karate.junit5.Karate;

public class KarateRunner {
	@Karate.Test
	Karate testTags() {
		return Karate.run("classpath:features");
	}
	

}
