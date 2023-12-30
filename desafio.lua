--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão

===================================================
|
|   CREEPER
|   Um monstro muito sagaz que explode na sua cara.
|   
|   Som: Tssssss
|
|   Atributos:
|       Ataque: ########00
|       Defesa: ###0000000
|       ...
|
===================================================


]]
os.execute("chcp 65001")
os.execute("cls")

-- Creature
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "🧨"
local sound = "Tsssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Attribute

local attackAttribute = 10
local defenseAttribute = 2
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

-- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto

local function getProgressBar(attribute)
    local fullChar = " ▨"
    local emptyChar = " ▢"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end


    return result
end
-- Card
print("===================================================")
print("|")
print("|" .. monsterName)
print("|" .. description)
print("|")
print("| Emoji correspondente: " .. emoji)
print("| Som:                  " .. sound)
print("| Item de drop:         " .. item)
print("| Horário favorito:     " .. favoriteTime)
print("|")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(inteligenceAttribute))
print("|")
print("===================================================")