class Member
    attr_reader :level,:attack, :magic_attack
    MAX_LEVEL = 99
    MIN_LEVEL = 1
    MAX_ATTACK = 999
    MIN_ATTACK = 1

    def initialize(level:,attack:,magic_attack:)
      unless level >= MIN_LEVEL && level <= MAX_LEVEL
        raise ArgumentError, "レベルは#{MIN_LEVEL}から#{MAX_LEVEL}の間で設定してください"
      end

      unless attack >= MIN_ATTACK && attack <= MAX_ATTACK
        raise ArgumentError, "攻撃力は#{MIN_ATTACK}から#{MAX_ATTACK}の間で設定してください"
      end

      unless magic_attack >= MIN_ATTACK && magic_attack <= MAX_ATTACK
        raise ArgumentError, "魔法攻撃力は#{MIN_ATTACK}から#{MAX_ATTACK}の間で設定してください"
      end
        @level = level
        @attack = attack
        @magic_attack = magic_attack
    end

    def all_status
        "レベル:#{level}, 攻撃力:#{attack}, 魔法攻撃力:#{magic_attack}"
    end
end