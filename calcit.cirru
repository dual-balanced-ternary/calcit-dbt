
{}
  :configs $ {} (:init-fn |dbt.main/main!) (:port 6001) (:reload-fn |dbt.main/reload!) (:version |0.0.4)
    :modules $ []
  :entries $ {}
  :ir $ {} (:package |dbt)
    :files $ {}
      |dbt.core $ {}
        :configs $ {}
        :defs $ {}
          |dbt $ {} (:at 1634156427204) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156429037) (:by |u0) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1634268856357) (:by |u0) (:text |dbt) (:type :leaf)
              |r $ {} (:at 1634156427204) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156430061) (:by |u0) (:text |x) (:type :leaf)
              |v $ {} (:at 1634269845386) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1634269846085) (:by |u0) (:text |let) (:type :leaf)
                  |L $ {} (:at 1634269846498) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634269846672) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634269860556) (:by |u0) (:text |s) (:type :leaf)
                          |j $ {} (:at 1634269861138) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634269865069) (:by |u0) (:text |turn-string) (:type :leaf)
                              |j $ {} (:at 1634269871797) (:by |u0) (:text |x) (:type :leaf)
                      |j $ {} (:at 1634269866351) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634269866488) (:by |u0) (:text |v) (:type :leaf)
                          |j $ {} (:at 1634269866886) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634269867868) (:by |u0) (:text |if) (:type :leaf)
                              |j $ {} (:at 1634269868237) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1634269874952) (:by |u0) (:text |starts-with?) (:type :leaf)
                                  |j $ {} (:at 1634269879333) (:by |u0) (:text |s) (:type :leaf)
                                  |r $ {} (:at 1634269993485) (:by |u0) (:text "|\"&") (:type :leaf)
                              |v $ {} (:at 1634269883452) (:by |u0) (:text |s) (:type :leaf)
                              |x $ {} (:at 1634269885363) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1634269966497) (:by |u0) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1634269968159) (:by |u0) (:text "|\"&") (:type :leaf)
                                  |j $ {} (:at 1634269970297) (:by |u0) (:text |s) (:type :leaf)
                  |T $ {} (:at 1634156643561) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634156651513) (:by |u0) (:text |quasiquote) (:type :leaf)
                      |T $ {} (:at 1634156431036) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156438102) (:by |u0) (:text |dbt:parse) (:type :leaf)
                          |j $ {} (:at 1634269946297) (:by |u0) (:text |~v) (:type :leaf)
          |dbt:add $ {} (:at 1634155932876) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634155932876) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634155932876) (:by |u0) (:text |dbt:add) (:type :leaf)
              |r $ {} (:at 1634155985936) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634155993147) (:by |u0) (:text |x) (:type :leaf)
                  |j $ {} (:at 1634155994606) (:by |u0) (:text |y) (:type :leaf)
              |v $ {} (:at 1634155985936) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634155985936) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634155985936) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634155985936) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157123833) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157124424) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634155985936) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156959986) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634155985936) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634155985936) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156003383) (:by |u0) (:text "|\"dbt_add") (:type :leaf)
                  |v $ {} (:at 1634155997072) (:by |u0) (:text |x) (:type :leaf)
                  |x $ {} (:at 1634155997935) (:by |u0) (:text |y) (:type :leaf)
          |dbt:div $ {} (:at 1634155950016) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634155950016) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634155950016) (:by |u0) (:text |dbt:div) (:type :leaf)
              |r $ {} (:at 1634156154047) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156154047) (:by |u0) (:text |x) (:type :leaf)
                  |j $ {} (:at 1634156154047) (:by |u0) (:text |y) (:type :leaf)
              |v $ {} (:at 1634156154047) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156154047) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634156154047) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156154047) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157128564) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157129080) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634156154047) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156957846) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634156154047) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156154047) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156160153) (:by |u0) (:text "|\"dbt_div") (:type :leaf)
                  |v $ {} (:at 1634156154047) (:by |u0) (:text |x) (:type :leaf)
                  |x $ {} (:at 1634156154047) (:by |u0) (:text |y) (:type :leaf)
          |dbt:format $ {} (:at 1634156254602) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156254602) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634156254602) (:by |u0) (:text |dbt:format) (:type :leaf)
              |r $ {} (:at 1634156263289) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156263289) (:by |u0) (:text |x) (:type :leaf)
              |v $ {} (:at 1634156263289) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156263289) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634156263289) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156263289) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157133284) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157133798) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634156263289) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156950489) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634156263289) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156263289) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156270097) (:by |u0) (:text "|\"dbt_format") (:type :leaf)
                  |v $ {} (:at 1634157741782) (:by |u0) (:text |x) (:type :leaf)
          |dbt:from-digit $ {} (:at 1634367143327) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634367143327) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634367143327) (:by |u0) (:text |dbt:from-digit) (:type :leaf)
              |r $ {} (:at 1634367144674) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634367144674) (:by |u0) (:text |x) (:type :leaf)
              |v $ {} (:at 1634367144674) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634367144674) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634367144674) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634367144674) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634367144674) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634367144674) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |j $ {} (:at 1634367144674) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634367144674) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634367144674) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634367144674) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634367156388) (:by |u0) (:text "|\"dbt_from_digit") (:type :leaf)
                  |v $ {} (:at 1634367144674) (:by |u0) (:text |x) (:type :leaf)
          |dbt:from-float $ {} (:at 1634156355829) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156355829) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634156355829) (:by |u0) (:text |dbt:from-float) (:type :leaf)
              |r $ {} (:at 1634156358977) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156368893) (:by |u0) (:text |x) (:type :leaf)
                  |j $ {} (:at 1634156369344) (:by |u0) (:text |y) (:type :leaf)
              |v $ {} (:at 1634156358977) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156358977) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634156358977) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156358977) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157136738) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157137306) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634156358977) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156969850) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634156358977) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156358977) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156367049) (:by |u0) (:text "|\"dbt_from_float") (:type :leaf)
                  |v $ {} (:at 1634156370556) (:by |u0) (:text |x) (:type :leaf)
                  |x $ {} (:at 1634156370874) (:by |u0) (:text |y) (:type :leaf)
          |dbt:mul $ {} (:at 1634155937387) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634155937387) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634155937387) (:by |u0) (:text |dbt:mul) (:type :leaf)
              |r $ {} (:at 1634156164412) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156164412) (:by |u0) (:text |x) (:type :leaf)
                  |j $ {} (:at 1634156164412) (:by |u0) (:text |y) (:type :leaf)
              |v $ {} (:at 1634156164412) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156164412) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634156164412) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156164412) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157120131) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157120673) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634156164412) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156977744) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634156164412) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156164412) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156170317) (:by |u0) (:text "|\"dbt_mul") (:type :leaf)
                  |v $ {} (:at 1634156164412) (:by |u0) (:text |x) (:type :leaf)
                  |x $ {} (:at 1634156164412) (:by |u0) (:text |y) (:type :leaf)
          |dbt:parse $ {} (:at 1634156199580) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156199580) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634156234642) (:by |u0) (:text |dbt:parse) (:type :leaf)
              |r $ {} (:at 1634156203015) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156767498) (:by |u0) (:text |s) (:type :leaf)
              |v $ {} (:at 1634156203015) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156203015) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634156203015) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156203015) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157042131) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157107562) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634157043057) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156962613) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634156203015) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156203015) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156229060) (:by |u0) (:text "|\"dbt_parse") (:type :leaf)
                  |v $ {} (:at 1634156239621) (:by |u0) (:text |s) (:type :leaf)
          |dbt:round $ {} (:at 1634231781527) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634231781527) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634231781527) (:by |u0) (:text |dbt:round) (:type :leaf)
              |r $ {} (:at 1634231783628) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231783628) (:by |u0) (:text |x) (:type :leaf)
                  |b $ {} (:at 1634231790247) (:by |u0) (:text |?) (:type :leaf)
                  |j $ {} (:at 1634231789561) (:by |u0) (:text |n) (:type :leaf)
              |v $ {} (:at 1634231783628) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231783628) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634231783628) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634231783628) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634231783628) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634231783628) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |j $ {} (:at 1634231783628) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634231783628) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634231783628) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634231783628) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634231797414) (:by |u0) (:text "|\"dbt_round") (:type :leaf)
                  |v $ {} (:at 1634231783628) (:by |u0) (:text |x) (:type :leaf)
                  |x $ {} (:at 1634231798825) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634231805212) (:by |u0) (:text |either) (:type :leaf)
                      |T $ {} (:at 1634231793851) (:by |u0) (:text |n) (:type :leaf)
                      |j $ {} (:at 1634231800534) (:by |u0) (:text |0) (:type :leaf)
          |dbt:sub $ {} (:at 1634156175047) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156175047) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634156177907) (:by |u0) (:text |dbt:sub) (:type :leaf)
              |r $ {} (:at 1634156175047) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156175047) (:by |u0) (:text |x) (:type :leaf)
                  |j $ {} (:at 1634156175047) (:by |u0) (:text |y) (:type :leaf)
              |v $ {} (:at 1634156175047) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156175047) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634156175047) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156175047) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157117160) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157117697) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634156175047) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156981905) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634156175047) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156175047) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156180627) (:by |u0) (:text "|\"dbt_sub") (:type :leaf)
                  |v $ {} (:at 1634156175047) (:by |u0) (:text |x) (:type :leaf)
                  |x $ {} (:at 1634156175047) (:by |u0) (:text |y) (:type :leaf)
          |dbt:to-digits $ {} (:at 1634366025196) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634366025196) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634366025196) (:by |u0) (:text |dbt:to-digits) (:type :leaf)
              |r $ {} (:at 1634366025196) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634366035238) (:by |u0) (:text |x) (:type :leaf)
              |v $ {} (:at 1634366036091) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634366036091) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634366036091) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634366036091) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634366036091) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634366036091) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |j $ {} (:at 1634366036091) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634366036091) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634366036091) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634366036091) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634366046174) (:by |u0) (:text "|\"dbt_to_digits") (:type :leaf)
                  |v $ {} (:at 1634366036091) (:by |u0) (:text |x) (:type :leaf)
          |dbt:to-float $ {} (:at 1634156326252) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156326252) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634156326252) (:by |u0) (:text |dbt:to-float) (:type :leaf)
              |r $ {} (:at 1634156329285) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156329285) (:by |u0) (:text |x) (:type :leaf)
              |v $ {} (:at 1634156329285) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156329285) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1634156329285) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156329285) (:by |u0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1634157147344) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634157147972) (:by |u0) (:text |or-current-path) (:type :leaf)
                          |T $ {} (:at 1634156329285) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1634156986183) (:by |u0) (:text |lib-path) (:type :leaf)
                      |v $ {} (:at 1634156329285) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634156329285) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                  |r $ {} (:at 1634156338881) (:by |u0) (:text "|\"dbt_to_float") (:type :leaf)
                  |v $ {} (:at 1634156340996) (:by |u0) (:text |x) (:type :leaf)
          |lib-path $ {} (:at 1634156950933) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156950933) (:by |u0) (:text |def) (:type :leaf)
              |j $ {} (:at 1634156950933) (:by |u0) (:text |lib-path) (:type :leaf)
              |r $ {} (:at 1634157078349) (:by |u0) (:text "|\"/dylibs/libcalcit_dbt") (:type :leaf)
        :ns $ {} (:at 1634155899566) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1634155899566) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1634155899566) (:by |u0) (:text |dbt.core) (:type :leaf)
            |r $ {} (:at 1634156098257) (:by |u0) (:type :expr)
              :data $ {}
                |D $ {} (:at 1634156100791) (:by |u0) (:text |:require) (:type :leaf)
                |L $ {} (:at 1634156105325) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634156108711) (:by |u0) (:text |dbt.$meta) (:type :leaf)
                    |j $ {} (:at 1634156105325) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634156105325) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634156105325) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                |T $ {} (:at 1634156097503) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634156110802) (:by |u0) (:text |dbt.util) (:type :leaf)
                    |j $ {} (:at 1634156097503) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634156097503) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634156097503) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
                        |j $ {} (:at 1634156097503) (:by |u0) (:text |or-current-path) (:type :leaf)
        :proc $ {} (:at 1634155899566) (:by |u0) (:type :expr)
          :data $ {}
      |dbt.main $ {}
        :configs $ {}
        :defs $ {}
          |main! $ {} (:at 1634155909228) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634155909228) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634155909228) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1634155909228) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1634155912703) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634155913766) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634157719423) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634157727821) (:by |u0) (:text |dbt:format) (:type :leaf)
                      |T $ {} (:at 1634157767100) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634233226359) (:by |u0) (:text |w-log) (:type :leaf)
                          |T $ {} (:at 1634156406964) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634156744886) (:by |u0) (:text |dbt) (:type :leaf)
                              |j $ {} (:at 1634270018110) (:by |u0) (:text |13.23) (:type :leaf)
              |x $ {} (:at 1634158317851) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634158319303) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634158319815) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634158324403) (:by |u0) (:text |dbt:format) (:type :leaf)
                      |j $ {} (:at 1634158324749) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634158327762) (:by |u0) (:text |dbt:add) (:type :leaf)
                          |j $ {} (:at 1634158333215) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634158335213) (:by |u0) (:text |dbt) (:type :leaf)
                              |j $ {} (:at 1634270023133) (:by |u0) (:text |13.23) (:type :leaf)
                          |r $ {} (:at 1634158361596) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634158363047) (:by |u0) (:text |dbt) (:type :leaf)
                              |j $ {} (:at 1634270024438) (:by |u0) (:text |6.6) (:type :leaf)
              |y $ {} (:at 1634158317851) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634158319303) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634158319815) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634158324403) (:by |u0) (:text |dbt:format) (:type :leaf)
                      |j $ {} (:at 1634158324749) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634158327762) (:by |u0) (:text |dbt:add) (:type :leaf)
                          |j $ {} (:at 1634158333215) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634158335213) (:by |u0) (:text |dbt) (:type :leaf)
                              |j $ {} (:at 1634270026946) (:by |u0) (:text |6) (:type :leaf)
                          |r $ {} (:at 1634158361596) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634158363047) (:by |u0) (:text |dbt) (:type :leaf)
                              |j $ {} (:at 1634270025674) (:by |u0) (:text |6) (:type :leaf)
              |yT $ {} (:at 1634158317851) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634158319303) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634158319815) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634158324403) (:by |u0) (:text |dbt:format) (:type :leaf)
                      |j $ {} (:at 1634231735414) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634231739229) (:by |u0) (:text |dbt:round) (:type :leaf)
                          |T $ {} (:at 1634231745099) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1634231745099) (:by |u0) (:text |dbt) (:type :leaf)
                              |j $ {} (:at 1634270028247) (:by |u0) (:text |13.23) (:type :leaf)
              |yb $ {} (:at 1634366061708) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634366062597) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634366062945) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634366063233) (:by |u0) (:text |dbt:to-digits) (:type :leaf)
                      |j $ {} (:at 1634366066597) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634366066597) (:by |u0) (:text |dbt) (:type :leaf)
                          |j $ {} (:at 1634366066597) (:by |u0) (:text |13.23) (:type :leaf)
              |yf $ {} (:at 1634366061708) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634367222666) (:by |u0) (:text |assert=) (:type :leaf)
                  |b $ {} (:at 1634367230018) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634367226227) (:by |u0) (:text |dbt) (:type :leaf)
                      |j $ {} (:at 1634367280483) (:by |u0) (:text |1) (:type :leaf)
                  |j $ {} (:at 1634366062945) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634367189576) (:by |u0) (:text |dbt:from-digit) (:type :leaf)
                      |j $ {} (:at 1634367185792) (:by |u0) (:text |1) (:type :leaf)
              |yh $ {} (:at 1634366061708) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634367222666) (:by |u0) (:text |assert=) (:type :leaf)
                  |b $ {} (:at 1634367230018) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634367226227) (:by |u0) (:text |dbt) (:type :leaf)
                      |j $ {} (:at 1634367284245) (:by |u0) (:text |8) (:type :leaf)
                  |j $ {} (:at 1634366062945) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634367189576) (:by |u0) (:text |dbt:from-digit) (:type :leaf)
                      |j $ {} (:at 1634367285895) (:by |u0) (:text |8) (:type :leaf)
              |yj $ {} (:at 1634231900783) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231907565) (:by |u0) (:text |run-tests) (:type :leaf)
          |run-tests $ {} (:at 1634231908674) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634231908674) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634231908674) (:by |u0) (:text |run-tests) (:type :leaf)
              |r $ {} (:at 1634231908674) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231915945) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634231917695) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270039309) (:by |u0) (:text |1) (:type :leaf)
                  |r $ {} (:at 1634231921482) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634231923003) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270041250) (:by |u0) (:text |1) (:type :leaf)
              |x $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231977336) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634231978870) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270044237) (:by |u0) (:text |1.3) (:type :leaf)
                  |r $ {} (:at 1634231980436) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634231980945) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270042823) (:by |u0) (:text |1.3) (:type :leaf)
              |y $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634231992039) (:by |u0) (:text |dbt:add) (:type :leaf)
                      |j $ {} (:at 1634231983997) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634231984603) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270045424) (:by |u0) (:text |1) (:type :leaf)
                      |r $ {} (:at 1634231985502) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634231986473) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270046865) (:by |u0) (:text |1) (:type :leaf)
                  |r $ {} (:at 1634232011077) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232011642) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270048259) (:by |u0) (:text |19) (:type :leaf)
              |yT $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634232003529) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232007275) (:by |u0) (:text |dbt:add) (:type :leaf)
                      |T $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634231997245) (:by |u0) (:text |dbt:add) (:type :leaf)
                          |j $ {} (:at 1634231998714) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1634231999345) (:by |u0) (:text |dbt) (:type :leaf)
                              |T $ {} (:at 1634270050126) (:by |u0) (:text |1) (:type :leaf)
                          |r $ {} (:at 1634232001272) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1634232002035) (:by |u0) (:text |dbt) (:type :leaf)
                              |T $ {} (:at 1634270051911) (:by |u0) (:text |1) (:type :leaf)
                      |j $ {} (:at 1634232198893) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634232198893) (:by |u0) (:text |dbt) (:type :leaf)
                          |j $ {} (:at 1634270053230) (:by |u0) (:text |1) (:type :leaf)
                  |r $ {} (:at 1634232012746) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232013322) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270054514) (:by |u0) (:text |15) (:type :leaf)
              |yj $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232030979) (:by |u0) (:text |->) (:type :leaf)
                      |j $ {} (:at 1634232034435) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232035254) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270057025) (:by |u0) (:text |1) (:type :leaf)
                      |r $ {} (:at 1634232038298) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232040613) (:by |u0) (:text |dbt:add) (:type :leaf)
                          |T $ {} (:at 1634232036859) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1634232037797) (:by |u0) (:text |dbt) (:type :leaf)
                              |T $ {} (:at 1634270058635) (:by |u0) (:text |1) (:type :leaf)
                      |v $ {} (:at 1634232046104) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232048375) (:by |u0) (:text |dbt:add) (:type :leaf)
                          |T $ {} (:at 1634232044588) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1634232045360) (:by |u0) (:text |dbt) (:type :leaf)
                              |T $ {} (:at 1634270059811) (:by |u0) (:text |1) (:type :leaf)
                      |x $ {} (:at 1634232051558) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232053439) (:by |u0) (:text |dbt:add) (:type :leaf)
                          |T $ {} (:at 1634232050010) (:by |u0) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1634232050917) (:by |u0) (:text |dbt) (:type :leaf)
                              |T $ {} (:at 1634270061336) (:by |u0) (:text |1) (:type :leaf)
                  |r $ {} (:at 1634232054663) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232055270) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270062693) (:by |u0) (:text |11) (:type :leaf)
              |yr $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232061807) (:by |u0) (:text |dbt:sub) (:type :leaf)
                      |j $ {} (:at 1634232062969) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232063482) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270064932) (:by |u0) (:text |44) (:type :leaf)
                      |r $ {} (:at 1634232064674) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232065199) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270066366) (:by |u0) (:text |6) (:type :leaf)
                  |r $ {} (:at 1634232066178) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232066704) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270067866) (:by |u0) (:text |466) (:type :leaf)
              |yv $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232072573) (:by |u0) (:text |dbt:to-float) (:type :leaf)
                      |j $ {} (:at 1634232073848) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232074321) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270070410) (:by |u0) (:text |33) (:type :leaf)
                  |r $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634231909816) (:by |u0) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1634231909816) (:by |u0) (:text |4) (:type :leaf)
                      |r $ {} (:at 1634231909816) (:by |u0) (:text |0) (:type :leaf)
              |yx $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232081347) (:by |u0) (:text |dbt:to-float) (:type :leaf)
                      |j $ {} (:at 1634232234056) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232237500) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270071894) (:by |u0) (:text |66) (:type :leaf)
                  |r $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634231909816) (:by |u0) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1634231909816) (:by |u0) (:text |-4) (:type :leaf)
                      |r $ {} (:at 1634231909816) (:by |u0) (:text |4) (:type :leaf)
              |yy $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232096209) (:by |u0) (:text |dbt:from-float) (:type :leaf)
                      |j $ {} (:at 1634231909816) (:by |u0) (:text |4) (:type :leaf)
                      |r $ {} (:at 1634231909816) (:by |u0) (:text |4) (:type :leaf)
                  |r $ {} (:at 1634232238647) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232241514) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270074981) (:by |u0) (:text |88) (:type :leaf)
              |yyT $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232106939) (:by |u0) (:text |dbt:round) (:type :leaf)
                      |j $ {} (:at 1634232108577) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232109095) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270076561) (:by |u0) (:text |3.333) (:type :leaf)
                  |r $ {} (:at 1634232110256) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232110752) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270085254) (:by |u0) (:text |3) (:type :leaf)
              |yyj $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232113313) (:by |u0) (:text |dbt:round) (:type :leaf)
                      |j $ {} (:at 1634232115689) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232116221) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270078208) (:by |u0) (:text |3.333) (:type :leaf)
                      |r $ {} (:at 1634231909816) (:by |u0) (:text |0) (:type :leaf)
                  |r $ {} (:at 1634232119888) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232120461) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270083728) (:by |u0) (:text |3) (:type :leaf)
              |yyr $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232122674) (:by |u0) (:text |dbt:round) (:type :leaf)
                      |j $ {} (:at 1634232124102) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232124610) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270080353) (:by |u0) (:text |3.333) (:type :leaf)
                      |r $ {} (:at 1634231909816) (:by |u0) (:text |1) (:type :leaf)
                  |r $ {} (:at 1634232126122) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232126671) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270082063) (:by |u0) (:text |3.3) (:type :leaf)
              |yyv $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634231909816) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634231909816) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232129189) (:by |u0) (:text |dbt:round) (:type :leaf)
                      |j $ {} (:at 1634232130570) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1634232131108) (:by |u0) (:text |dbt) (:type :leaf)
                          |T $ {} (:at 1634270087399) (:by |u0) (:text |3.333) (:type :leaf)
                      |r $ {} (:at 1634231909816) (:by |u0) (:text |2) (:type :leaf)
                  |r $ {} (:at 1634232132718) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232133388) (:by |u0) (:text |dbt) (:type :leaf)
                      |T $ {} (:at 1634270088930) (:by |u0) (:text |3.33) (:type :leaf)
              |yyw $ {} (:at 1634232416785) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634232418273) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634232441964) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232445305) (:by |u0) (:text |dbt:div) (:type :leaf)
                      |T $ {} (:at 1634232419036) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634232420694) (:by |u0) (:text |dbt) (:type :leaf)
                          |j $ {} (:at 1634270090283) (:by |u0) (:text |11) (:type :leaf)
                      |j $ {} (:at 1634232449102) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634232449102) (:by |u0) (:text |dbt) (:type :leaf)
                          |j $ {} (:at 1634270092115) (:by |u0) (:text |19) (:type :leaf)
                  |r $ {} (:at 1634232453576) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232453576) (:by |u0) (:text |dbt) (:type :leaf)
                      |j $ {} (:at 1634270093487) (:by |u0) (:text |19) (:type :leaf)
              |yywT $ {} (:at 1634232416785) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634232418273) (:by |u0) (:text |assert=) (:type :leaf)
                  |j $ {} (:at 1634232441964) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1634232486206) (:by |u0) (:text |dbt:mul) (:type :leaf)
                      |T $ {} (:at 1634232419036) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634232420694) (:by |u0) (:text |dbt) (:type :leaf)
                          |j $ {} (:at 1634270094775) (:by |u0) (:text |19) (:type :leaf)
                      |j $ {} (:at 1634232449102) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1634232449102) (:by |u0) (:text |dbt) (:type :leaf)
                          |j $ {} (:at 1634270096393) (:by |u0) (:text |19) (:type :leaf)
                  |r $ {} (:at 1634232453576) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634232453576) (:by |u0) (:text |dbt) (:type :leaf)
                      |j $ {} (:at 1634270097722) (:by |u0) (:text |11) (:type :leaf)
              |yyx $ {} (:at 1634232316319) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634232317762) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1634232322514) (:by |u0) (:text "|\"Passed test.") (:type :leaf)
        :ns $ {} (:at 1634155904033) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1634155904033) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1634155904033) (:by |u0) (:text |dbt.main) (:type :leaf)
            |r $ {} (:at 1634156419252) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1634156419922) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1634156420862) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1634156423319) (:by |u0) (:text |dbt.core) (:type :leaf)
                    |j $ {} (:at 1634156424133) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1634156425226) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1634268873758) (:by |u0) (:text |dbt) (:type :leaf)
                        |j $ {} (:at 1634157730781) (:by |u0) (:text |dbt:format) (:type :leaf)
                        |r $ {} (:at 1634158330938) (:by |u0) (:text |dbt:add) (:type :leaf)
                        |t $ {} (:at 1634232222045) (:by |u0) (:text |dbt:sub) (:type :leaf)
                        |u $ {} (:at 1634232466151) (:by |u0) (:text |dbt:div) (:type :leaf)
                        |uT $ {} (:at 1634232468679) (:by |u0) (:text |dbt:mul) (:type :leaf)
                        |v $ {} (:at 1634231845144) (:by |u0) (:text |dbt:round) (:type :leaf)
                        |x $ {} (:at 1634232087121) (:by |u0) (:text |dbt:to-float) (:type :leaf)
                        |y $ {} (:at 1634232101675) (:by |u0) (:text |dbt:from-float) (:type :leaf)
                        |yT $ {} (:at 1634366069913) (:by |u0) (:text |dbt:to-digits) (:type :leaf)
                        |yj $ {} (:at 1634367195429) (:by |u0) (:text |dbt:from-digit) (:type :leaf)
        :proc $ {} (:at 1634155904033) (:by |u0) (:type :expr)
          :data $ {}
      |dbt.util $ {}
        :configs $ {}
        :defs $ {}
          |get-dylib-ext $ {} (:at 1634156080778) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156080778) (:by |u0) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1634156080778) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
              |r $ {} (:at 1634156080778) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1634156080778) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156080778) (:by |u0) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1634156080778) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156080778) (:by |u0) (:text |&get-os) (:type :leaf)
                  |r $ {} (:at 1634156080778) (:by |u0) (:text "|\".so") (:type :leaf)
                  |v $ {} (:at 1634156080778) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156080778) (:by |u0) (:text |:macos) (:type :leaf)
                      |j $ {} (:at 1634156080778) (:by |u0) (:text "|\".dylib") (:type :leaf)
                  |x $ {} (:at 1634156080778) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156080778) (:by |u0) (:text |:windows) (:type :leaf)
                      |j $ {} (:at 1634156080778) (:by |u0) (:text "|\".dll") (:type :leaf)
          |or-current-path $ {} (:at 1634156045323) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1634156045323) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1634156045323) (:by |u0) (:text |or-current-path) (:type :leaf)
              |r $ {} (:at 1634156066523) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156066523) (:by |u0) (:text |p) (:type :leaf)
              |v $ {} (:at 1634156066523) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1634156066523) (:by |u0) (:text |if) (:type :leaf)
                  |j $ {} (:at 1634156066523) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1634156066523) (:by |u0) (:text |blank?) (:type :leaf)
                      |j $ {} (:at 1634156066523) (:by |u0) (:text |p) (:type :leaf)
                  |r $ {} (:at 1634156066523) (:by |u0) (:text "|\".") (:type :leaf)
                  |v $ {} (:at 1634156066523) (:by |u0) (:text |p) (:type :leaf)
        :ns $ {} (:at 1634156018357) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1634156018357) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1634156018357) (:by |u0) (:text |dbt.util) (:type :leaf)
        :proc $ {} (:at 1634156018357) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
