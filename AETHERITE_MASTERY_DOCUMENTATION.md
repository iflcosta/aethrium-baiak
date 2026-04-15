# Sistema de Mestria de Aetherita e Crafting - Aethrium Baiak

Este documento detalha o planejamento e a arquitetura do sistema de Crafting e Especialização de Aetherita, integrando mecânicas de MMORPGs modernos (FFXIV, WoW, Albion) ao servidor.

## 1. O Conceito da Aetherita
A Aetherita é a fonte de energia primária do mundo de Aethrium, existindo em três estados físicos fundamentais. Cada estado governa um tipo de sistema no jogo.

### Estados de Aetherita e Funções Propostas
*   **Aetherita Sólida**: Focada em **Ferrearia (Blacksmithing)**. Forja de armas, armaduras e escudos. Itens de alta qualidade (Legendary) exigem alta skill sólida.
*   **Aetherita Líquida**: Focada em **Alquimia e Infusão (Alchemy/Infusion)**. Usada para revestimentos elementais em armas, catalisadores de refino e poções de transcendência (% de HP/Mana).
*   **Aetherita Gasosa**: Focada em **Cinética e Utilidade (Utility/Speed)**. Governa habilidades de movimento (Dash), auras passivas de velocidade e regeneração de alma.

---

## 2. Sistema de Mestria (Skills)
O jogador possui três skills de mestria que progridem de forma independente, mas com eficiências diferentes baseadas na **Prioridade** definida pelo jogador.

### Configuração de Prioridade e Rates
| Prioridade | Multiplicador de XP | Hardcap na Troca |
| :--- | :--- | :--- |
| **1ª (Primária)** | 1.8x | Sem limite (Indefinido) |
| **2ª (Secundária)** | 1.2x | Reseta para **60** (se estiver acima) |
| **3ª (Terciária)** | 0.6x | Reseta para **30** (se estiver acima) |

> [!IMPORTANT]
> **Penalidade de Reordenamento**: Quando o jogador troca as ordens de prioridade, a skill que passar a ocupar a **1ª posição** sofre uma perda imediata de **30%** do seu nível/XP total.

---

## 3. Lógica de Crafting (Interface)
O sistema utilizará uma interface customizada via **Extended Opcodes** no OTClient.

*   **Categorias**: Ferrearia, Alquimia, Misticismo.
*   **Qualidade Crítica**: Chance de criar itens "Excellent" ou "Masterwork" com atributos extras (ex: +3 Atk, +5% Crit).
*   **Sucesso/Falha**: Chance base de sucesso que aumenta conforme o nível de mestria correspondente.

---

## 4. Pendências e Definições Necessárias (USER SETTINGS)

Antes de iniciarmos a codificação, as seguintes definições são necessárias:

### Definições de Itens
- [ ] **IDs das Aetheritas**: Definir quais itens serão as Aetheritas (Sólida, Líquida, Gasosa).
- [ ] **Fonte de XP**: Definir como o ganho de XP de mestria será triggado (Ex: ao craftar itens, ao minerar, ou uma porcentagem da XP de monstros mortos?).

### Regras de Negócio
- [ ] **Cooldown de Troca**: Definir se haverá um tempo de espera para reordenar as prioridades (Ex: 24h ou 7 dias).
- [ ] **Custo de Troca**: A troca será gratuita (apenas com a perda de %) ou terá um custo em Gold/Coins?

### Atributos Específicos
- [ ] Validar a lista de atributos da Aetherita Líquida (Infusões elementais).
- [ ] Validar a lista de atributos da Aetherita Gasosa (Auras e Dash).

---

## 5. Próximos Passos (Workflow)
1.  Implementar `aetherite_lib.lua` com a lógica de XP e troca.
2.  Criar a estrutura SQL no banco de dados.
3.  Desenvolver o módulo de interface no OTClient (game_crafting).
4.  Inserir as primeiras receitas de teste.

---
*Documentação gerada em 15/04/2026 para continuidade do desenvolvimento.*
