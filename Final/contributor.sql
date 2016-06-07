SELECT el.amount::TEXT::MONEY/100 AS sum,
	el.paid_at::DATE,
	--el.disbursed_at::DATE,
	c.firstname AS first,
	c.lastname AS last,
	el.
	e.committeename AS earmark

FROM extended_lineitems el
	JOIN contributions c on c.id = el.contribution_id
	JOIN entities e on e.id = el.entity_id

WHERE --c.firstname iLIKE 'andrew'
	--AND c.lastname iLIKE 'woods'
	AND el.created_at::DATE BETWEEN '2014-07-21' AND '2014-10-21' 
	AND el.zone_id = 28 --hawaiiiii

ORDER BY el.paid_at;