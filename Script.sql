SELECT * FROM 
(
    SELECT 'WEEK-1'AS WEEK,A.*, 
    FLOOR
    (
        CASE 
        WHEN CATEGORY = 'Low'  AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE>=MAX_AMOUNT THEN MAX_AMOUNT*COM_PERCNT
        WHEN CATEGORY = 'Low' AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE<MAX_AMOUNT THEN ACTUAL_SALE*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)>=MAX_AMOUNT THEN (MAX_AMOUNT-TARGET)*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)<MAX_AMOUNT THEN (ACTUAL_SALE-TARGET)*COM_PERCNT
        ELSE 0 END
    ) COMMISSION
    FROM
    (
        SELECT A.*,NVL(B.ACTUAL_SALE,0) ACTUAL_SALE  FROM TBL_AB_RET_TARGET A LEFT JOIN 
        (
            SELECT SENDER_MSISDN, SUM(SALE_AMOUNT) ACTUAL_SALE
             FROM BI_PROD.TBL_DATA_POS_DAILY_FCT
            WHERE EVENT_DATE BETWEEN '1-SEP-16' AND '7-SEP-16'
            GROUP BY SENDER_MSISDN
        ) B
        ON A.RET_MSISDN = B.SENDER_MSISDN
    ) A
)
WHERE COMMISSION>0;


SELECT * FROM 
(
    SELECT 'WEEK-2' AS WEEK,A.*, 
    FLOOR
    (
        CASE 
        WHEN CATEGORY = 'Low'  AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE>=MAX_AMOUNT THEN MAX_AMOUNT*COM_PERCNT
        WHEN CATEGORY = 'Low' AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE<MAX_AMOUNT THEN ACTUAL_SALE*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)>=MAX_AMOUNT THEN (MAX_AMOUNT-TARGET)*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)<MAX_AMOUNT THEN (ACTUAL_SALE-TARGET)*COM_PERCNT
        ELSE 0 END
    ) COMMISSION
    FROM
    (
        SELECT A.*,NVL(B.ACTUAL_SALE,0) ACTUAL_SALE  FROM TBL_AB_RET_TARGET A LEFT JOIN 
        (
            SELECT SENDER_MSISDN, SUM(SALE_AMOUNT) ACTUAL_SALE
             FROM BI_PROD.TBL_DATA_POS_DAILY_FCT
            WHERE EVENT_DATE BETWEEN '8-SEP-16' AND '14-SEP-16'
            GROUP BY SENDER_MSISDN
        ) B
        ON A.RET_MSISDN = B.SENDER_MSISDN
    ) A
)
WHERE COMMISSION>0;


SELECT * FROM 
(
    SELECT 'WEEK-3' AS WEEK,A.*, 
    FLOOR
    (
        CASE 
        WHEN CATEGORY = 'Low'  AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE>=MAX_AMOUNT THEN MAX_AMOUNT*COM_PERCNT
        WHEN CATEGORY = 'Low' AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE<MAX_AMOUNT THEN ACTUAL_SALE*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)>=MAX_AMOUNT THEN (MAX_AMOUNT-TARGET)*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)<MAX_AMOUNT THEN (ACTUAL_SALE-TARGET)*COM_PERCNT
        ELSE 0 END
    ) COMMISSION
    FROM
    (
        SELECT A.*,NVL(B.ACTUAL_SALE,0) ACTUAL_SALE  FROM TBL_AB_RET_TARGET A LEFT JOIN 
        (
            SELECT SENDER_MSISDN, SUM(SALE_AMOUNT) ACTUAL_SALE
             FROM BI_PROD.TBL_DATA_POS_DAILY_FCT
            WHERE EVENT_DATE BETWEEN '15-SEP-16' AND '21-SEP-16'
            GROUP BY SENDER_MSISDN
        ) B
        ON A.RET_MSISDN = B.SENDER_MSISDN
    ) A
)
WHERE COMMISSION>0;



SELECT * FROM 
(
    SELECT 'WEEK-4' AS WEEK,A.*, 
    FLOOR
    (
        CASE 
        WHEN CATEGORY = 'Low'  AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE>=MAX_AMOUNT THEN MAX_AMOUNT*COM_PERCNT
        WHEN CATEGORY = 'Low' AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE<MAX_AMOUNT THEN ACTUAL_SALE*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)>=MAX_AMOUNT THEN (MAX_AMOUNT-TARGET)*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)<MAX_AMOUNT THEN (ACTUAL_SALE-TARGET)*COM_PERCNT
        ELSE 0 END
    ) COMMISSION
    FROM
    (
        SELECT A.*,NVL(B.ACTUAL_SALE,0) ACTUAL_SALE  FROM TBL_AB_RET_TARGET A LEFT JOIN 
        (
            SELECT SENDER_MSISDN, SUM(SALE_AMOUNT) ACTUAL_SALE
             FROM BI_PROD.TBL_DATA_POS_DAILY_FCT
            WHERE EVENT_DATE BETWEEN '22-SEP-16' AND '28-SEP-16'
            GROUP BY SENDER_MSISDN
        ) B
        ON A.RET_MSISDN = B.SENDER_MSISDN
    ) A
)
WHERE COMMISSION>0;

SELECT * FROM 
(
    SELECT 'WEEK-5' AS WEEK,A.*, 
    FLOOR
    (
        CASE 
        WHEN CATEGORY = 'Low'  AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE>=MAX_AMOUNT THEN MAX_AMOUNT*COM_PERCNT
        WHEN CATEGORY = 'Low' AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE<MAX_AMOUNT THEN ACTUAL_SALE*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)>=MAX_AMOUNT THEN (MAX_AMOUNT-TARGET)*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)<MAX_AMOUNT THEN (ACTUAL_SALE-TARGET)*COM_PERCNT
        ELSE 0 END
    ) COMMISSION
    FROM
    (
        SELECT A.*,NVL(B.ACTUAL_SALE,0) ACTUAL_SALE  FROM TBL_AB_RET_TARGET A LEFT JOIN 
        (
            SELECT SENDER_MSISDN, SUM(SALE_AMOUNT) ACTUAL_SALE
             FROM BI_PROD.TBL_DATA_POS_DAILY_FCT
            WHERE EVENT_DATE BETWEEN '29-SEP-16' AND '5-OCT-16'
            GROUP BY SENDER_MSISDN
        ) B
        ON A.RET_MSISDN = B.SENDER_MSISDN
    ) A
)
WHERE COMMISSION>0;


SELECT * FROM 
(
    SELECT 'WEEK-6' AS WEEK,A.*, 
    FLOOR
    (
        CASE 
        WHEN CATEGORY = 'Low'  AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE>=MAX_AMOUNT THEN MAX_AMOUNT*COM_PERCNT
        WHEN CATEGORY = 'Low' AND ACTUAL_SALE>=TARGET AND ACTUAL_SALE<MAX_AMOUNT THEN ACTUAL_SALE*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)>=MAX_AMOUNT THEN (MAX_AMOUNT-TARGET)*COM_PERCNT
        WHEN CATEGORY = 'High' AND ACTUAL_SALE>=TARGET AND (ACTUAL_SALE-TARGET)<MAX_AMOUNT THEN (ACTUAL_SALE-TARGET)*COM_PERCNT
        ELSE 0 END
    ) COMMISSION
    FROM
    (
        SELECT A.*,NVL(B.ACTUAL_SALE,0) ACTUAL_SALE  FROM TBL_AB_RET_TARGET A LEFT JOIN 
        (
            SELECT SENDER_MSISDN, SUM(SALE_AMOUNT) ACTUAL_SALE
             FROM BI_PROD.TBL_DATA_POS_DAILY_FCT
            WHERE EVENT_DATE BETWEEN '6-OCT-16' AND '12-OCT-16'
            GROUP BY SENDER_MSISDN
        ) B
        ON A.RET_MSISDN = B.SENDER_MSISDN
    ) A
)
WHERE COMMISSION>0;
