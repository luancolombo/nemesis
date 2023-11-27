-- Cria um comando de chat chamado !tasksystem
local taskSystemCommand = TalkAction("!tasksystem")

-- Define a função associada ao comando
function taskSystemCommand.onSay(player, words, param)
    -- Texto explicativo sobre o sistema de tarefas (pode ser personalizado)
    local taskSystemText = [[
       Para pegar uma task basta ir em um dp, e dar use no nemesis task board, escolha sua task, complete e recolha sua recompensa. Cidades em que o Nemesis Task Board esta disponivel no DP:
	--thais
	--carlin
	--venore
	--darashia
	--yalahar
	--liberty bay
	--port hope
    ]]

    -- Exibe uma caixa de diálogo ao jogador com o texto explicativo
    player:showTextDialog(640, taskSystemText)

    return true
end

-- Configuração da ação
taskSystemCommand:groupType("normal")
taskSystemCommand:register()
