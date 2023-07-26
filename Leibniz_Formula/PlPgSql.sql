CREATE OR REPLACE FUNCTION public.calcpi()
RETURNS numeric
LANGUAGE plpgsql
AS $function$
	declare 
		v_sum numeric := 0;
		-- 1000000000 -> aprox 10 minutes on an Intel Core i3-10110U (4) @ 4.1 GHz. 8GB RAM DDR4
		v_loops bigint := 1000000000;
		v_iterator bigint := 0;
		v_denominador bigint := 1;
		v_constNumerator numeric := 4.0;
		v_runTime timestamptz := clock_timestamp();
	begin
		raise notice 'calc started';
		while v_iterator <= v_loops 
		loop
			if (v_iterator % 2 = 0) then 
				v_sum := v_sum + (v_constNumerator/v_denominador);
			else
				v_sum := v_sum - (v_constNumerator/v_denominador);
			end if;
			v_denominador := v_denominador + 2;
			v_iterator := v_iterator + 1;
		end loop;
		raise notice '%', v_sum;
		raise notice 'calc ended';
		raise notice 'RUNTIME: %', clock_timestamp() - v_runTime ;
		return v_sum;
	END;
$function$
;