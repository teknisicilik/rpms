SELECT
	tb_prog_detail.id,
	tb_prog_detail.kode_program,
	tb_tahun.tahun AS tahun_name,
	(SELECT COALESCE(SUM(rab_component.total_cost),0) FROM rab_component WHERE program_id = tb_prog_detail.id) AS total_rencana,
	(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE pelaporan_um.program_id = tb_prog_detail.id AND pelaporan_um.periode_tahun = tb_tahun.id) -
	(SELECT(SELECT coalesce(Sum(balancing.amount), 0) FROM balancing WHERE balancing.program_id = tb_prog_detail.id AND
		balancing.pelaporan_id IN (SELECT id FROM pelaporan_um WHERE pelaporan_um.periode_tahun = tb_tahun.id)
	)) AS total_realisasi,

	
    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 1)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 1),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 1)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 1)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 1
	) * 100
     ,0)
    ) AS jan,
    
    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 2)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 2),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 2)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 2)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 2
	) * 100
     ,0)
    ) AS feb,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 3)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 3),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 3)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 3)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 3
	) * 100
     ,0)
    ) AS mar,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 4)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 4),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 4)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 4)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 4
	) * 100
     ,0)
    ) AS apr,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 5)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 5),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 5)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 5)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 5
	) * 100
     ,0)
    ) AS mei,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 6)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 6),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 6)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 6)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 6
	) * 100
     ,0)
    ) AS jun,
    
    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 7)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 7),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 7)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 7)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 7
	) * 100
     ,0)
    ) AS jul,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 8)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 8),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 8)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 8)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 8
	) * 100
     ,0)
    ) AS agust,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 9)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 9),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 9)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 9)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 9
	) * 100
     ,0)
    ) AS sept,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 10)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 10),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 10)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 10)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 10
	) * 100
     ,0)
    ) AS okt,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 11)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 11),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 11)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 11)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 11
	) * 100
     ,0)
    ) AS nov,

    (SELECT ROUND(
	(
		SELECT IF(
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 12)
			>=
			(SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 12),
			
			(-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 12)),
			(SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id  AND periode_bulan = 12)
		)
	) /
	(
		SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 12
	) * 100
     ,0)
    ) AS des
    
FROM
	rab_component
	LEFT JOIN
	pelaporan_um ON pelaporan_um.program_id = rab_component.program_id
	INNER JOIN
	tb_prog_detail ON tb_prog_detail.id = rab_component.program_id,
	tb_tahun,
	balancing,
	pengajuan_um
GROUP BY
	tb_prog_detail.id,
	tb_prog_detail.kode_program,
	tb_tahun.tahun