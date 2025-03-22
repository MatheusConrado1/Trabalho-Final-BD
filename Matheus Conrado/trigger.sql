CREATE OR REPLACE FUNCTION atualizar_valor_diaria()
RETURNS TRIGGER AS $$
DECLARE
    total_diarias FLOAT;
    media_diaria FLOAT;
BEGIN
    -- Calcula o total das diárias já existentes para o quarto
    SELECT COALESCE(SUM(valor), 0) INTO total_diarias
    FROM reserva_quarto
    WHERE id_quarto = NEW.id_quarto AND id_hotel = NEW.id_hotel;

    -- Calcular a média das diárias, incluindo a nova diária
    media_diaria := (total_diarias + NEW.valor) / (COUNT(*) + 1);

    -- Atualizar o valor_diaria na tabela quarto
    UPDATE quarto
    SET valor_diaria = media_diaria
    WHERE id_quarto = NEW.id_quarto AND id_hotel = NEW.id_hotel;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_atualizar_valor_diaria
BEFORE INSERT ON reserva_quarto
FOR EACH ROW
EXECUTE FUNCTION atualizar_valor_diaria();


select * from quarto;

insert into reserva_quarto (valor, data_entrada, data_saida, id_reserva, id_quarto, id_hotel)
VALUES(200, '2023-12-06', '2023-12-09', 1, 101, 1);