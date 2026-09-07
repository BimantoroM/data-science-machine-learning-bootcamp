-- Nama: I Made Bimantoro Mastra
-- Assignment: Case Study Advanced SQL Queries


-- 1. Menggunakan Query Data--

select 
	*
from actor;

-- 1a. Tampilkan first_name dan last_name dari aktor yang memiliki first_name "Jennifer", "Nick", atau "Ed".
SELECT 
	first_name Nama_Depan,
	last_name Nama_Belakang
FROM actor
WHERE first_name = 'Jennifer' 
   OR first_name = 'Nick' 
   OR first_name = 'Ed';


select 
	*
from payment;

-- 1b. Hitung total pembayaran (amount) untuk setiap payment_id yang totalnya lebih dari 5.99.
SELECT payment_id, amount
FROM payment
WHERE amount > 5.99;

-- 1b. Menghitung total transaksi berdasarkan amount dari transaksi id yang berbeda tetapi costumer id yang sama.
SELECT customer_id, SUM(amount) AS total_amount
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 5.99
ORDER BY total_amount DESC;


select 
	*
from film;

-- 1c. Kelompokkan film berdasarkan durasi menjadi 4 kategori:
SELECT 
    title Judul_Film,
    length Durasi_Film,
    CASE
        WHEN length > 100 THEN 'Over 100 menit'
        WHEN length BETWEEN 87 AND 100 THEN '87-100 menit'
        WHEN length BETWEEN 72 AND 86 THEN '72-86 menit'
        ELSE 'Under 72 menit'
    END AS kategori_durasi
FROM film
ORDER BY length DESC;


-- 1d. Gabungkan data dari tabel rental dan payment untuk menampilkan rental_id, rental_date, payment_id, dan amount, urutkan berdasarkan amount secara ascending.
SELECT 
    r.rental_id,
    r.rental_date,
    p.payment_id,
    p.amount
FROM rental r
LEFT JOIN payment p ON r.rental_id = p.rental_id
ORDER BY p.amount ASC;


select
	*
from address;

-- 1e. Gunakan UNION untuk menggabungkan alamat (address) yang memiliki city_id = 42 dengan city_id = 300.
SELECT * FROM address WHERE city_id = 42
UNION
SELECT * FROM address WHERE city_id = 300;


-- 2. Menggunakan Subquery--

select
	*
from customer;

SELECT AVG(amount) FROM payment;

-- 2a. Tampilkan nama pelanggan yang pernah melakukan transaksi dengan jumlah lebih dari rata-rata transaksi di tabel payment.
SELECT 
	c.first_name,
	c.last_name,
	p.amount
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
WHERE p.amount > (SELECT AVG(amount) FROM payment) -- AVG untuk rata2 amount dari payment.
order by amount asc;

SELECT AVG(length) FROM film

-- 2b. Ambil daftar film yang memiliki durasi lebih panjang dibandingkan durasi rata-rata dari semua film dalam tabel film.
SELECT 
	title Judul_film, 
	length durasi_film
FROM film
WHERE length > (SELECT AVG(length) FROM film)	-- AVG untuk rata2 amount dari film.
ORDER BY length asc;

select 
	*
from film_actor ;


-- 2c. Buat query untuk menampilkan aktor yang hanya membintangi satu film dalam database.
SELECT a.first_name, a.last_name
FROM actor a
WHERE a.actor_id IN (
    SELECT fa.actor_id
    FROM film_actor fa
    GROUP BY fa.actor_id
    HAVING COUNT(fa.film_id) = 1);


-- 3. Menggunakan Window Functions--

-- 3a. Gunakan RANK() untuk menentukan peringkat film berdasarkan rental_rate.
SELECT 
    title,
    rental_rate,
    RANK() OVER (ORDER BY rental_rate DESC) AS peringkat
FROM film;


-- 3b. Gunakan DENSE_RANK() untuk menentukan peringkat pelanggan berdasarkan total transaksi yang mereka lakukan.
SELECT 
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_transaksi,
    DENSE_RANK() OVER (ORDER BY SUM(p.amount) DESC) AS peringkat
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY peringkat ASC;


-- 3c. Gunakan ROW_NUMBER() untuk memberikan nomor urut pada daftar film berdasarkan release_year.
SELECT 
    title,
    release_year,
    ROW_NUMBER() OVER (ORDER BY release_year) AS nomor_urut
FROM film;


-- 4. Menggunakan Common Table Expressions (CTE)--

-- 4a. Gunakan CTE untuk membuat daftar pelanggan yang melakukan transaksi lebih dari 10 kali.
WITH transaksi_pelanggan AS (				-- Buat tabel sementara dari..
    SELECT 
        customer_id,
        COUNT(payment_id) AS jumlah_transaksi
    FROM payment
    GROUP BY customer_id
)
SELECT 
    c.first_name,
    c.last_name,
    t.jumlah_transaksi
FROM transaksi_pelanggan t
JOIN customer c ON c.customer_id = t.customer_id
WHERE t.jumlah_transaksi > 10
ORDER BY t.jumlah_transaksi DESC;


-- 4b. Gunakan CTE untuk mendapatkan daftar film dengan jumlah rental terbanyak.
WITH jumlah_rental_film AS (
    SELECT 
        i.film_id,
        COUNT(r.rental_id) AS total_rental
    FROM inventory i
    JOIN rental r ON r.inventory_id = i.inventory_id
    GROUP BY i.film_id
)
SELECT 
    f.title,
    jr.total_rental
FROM jumlah_rental_film jr
JOIN film f ON f.film_id = jr.film_id
ORDER BY jr.total_rental DESC;


-- 5. Menggunakan CASE WHEN untuk Klasifikasi Data--

-- 5a. Buat query yang mengelompokkan film berdasarkan rental_rate:
SELECT 
    title,
    rental_rate,
    CASE
        WHEN rental_rate > 4 THEN 'Premium'
        WHEN rental_rate BETWEEN 2 AND 4 THEN 'Regular'
        ELSE 'Budget'
    END AS kategori_film
FROM film
ORDER BY rental_rate DESC;


-- 5b. Buat query yang mengelompokkan pelanggan berdasarkan total transaksi mereka:
SELECT 
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_transaksi,
    CASE
        WHEN SUM(p.amount) > 100 THEN 'High Value Customer'
        WHEN SUM(p.amount) BETWEEN 50 AND 100 THEN 'Medium Value Customer'
        ELSE 'Low Value Customer'
    END AS kategori_pelanggan
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_transaksi DESC;