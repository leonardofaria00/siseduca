package br.com.sgedu.conf;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
public class JPAConfiguration {

	@Bean
	public LocalContainerEntityManagerFactoryBean localContainerEntityManagerFactoryBean() {
		LocalContainerEntityManagerFactoryBean bean = new LocalContainerEntityManagerFactoryBean();
		JpaVendorAdapter vendor = new HibernateJpaVendorAdapter();
		bean.setJpaVendorAdapter(vendor);

		DriverManagerDataSource source = new DriverManagerDataSource();
		source.setUsername("postgres");
		source.setPassword("123456");
		source.setUrl("jdbc:postgresql://localhost:5432/sgedu");
		source.setDriverClassName("org.postgresql.Driver");
//		source.setUrl("jdbc:mysql://localhost:3306/sgedu");
//		source.setDriverClassName("com.mysql.jdbc.Driver");
		bean.setDataSource(source);
		Properties props = new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
//		props.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		props.setProperty("hibernate.show_sql", "true");
		props.setProperty("hibernate.hbm2ddl.auto", "update");
		bean.setJpaProperties(props);

		bean.setPackagesToScan("br.com.sgedu.model");
		return bean;
	}

	@Bean
	public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
		return new JpaTransactionManager(emf);
	}
}
