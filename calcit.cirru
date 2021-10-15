
{}
  :configs $ {} (:reload-fn |dbt.main/reload!) (:port 6001) (:version |0.0.1)
    :modules $ []
    :init-fn |dbt.main/main!
  :ir $ {} (:package |dbt)
    :files $ {}
      |dbt.core $ {}
        :defs $ {}
          |dbt:add $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634155932876) (:by |u0)
              |j $ {} (:text |dbt:add) (:type :leaf) (:at 1634155932876) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634155993147) (:by |u0)
                  |j $ {} (:text |y) (:type :leaf) (:at 1634155994606) (:by |u0)
                :type :expr
                :at 1634155985936
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634155985936) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634155985936) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157124424) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634155985936) (:by |u0)
                        :type :expr
                        :at 1634157123833
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156959986) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634155985936) (:by |u0)
                        :type :expr
                        :at 1634155985936
                        :by |u0
                    :type :expr
                    :at 1634155985936
                    :by |u0
                  |r $ {} (:text "|\"dbt_add") (:type :leaf) (:at 1634156003383) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634155997072) (:by |u0)
                  |x $ {} (:text |y) (:type :leaf) (:at 1634155997935) (:by |u0)
                :type :expr
                :at 1634155985936
                :by |u0
            :type :expr
            :at 1634155932876
            :by |u0
          |dbt:div $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634155950016) (:by |u0)
              |j $ {} (:text |dbt:div) (:type :leaf) (:at 1634155950016) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156154047) (:by |u0)
                  |j $ {} (:text |y) (:type :leaf) (:at 1634156154047) (:by |u0)
                :type :expr
                :at 1634156154047
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634156154047) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634156154047) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157129080) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634156154047) (:by |u0)
                        :type :expr
                        :at 1634157128564
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156957846) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156154047) (:by |u0)
                        :type :expr
                        :at 1634156154047
                        :by |u0
                    :type :expr
                    :at 1634156154047
                    :by |u0
                  |r $ {} (:text "|\"dbt_div") (:type :leaf) (:at 1634156160153) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634156154047) (:by |u0)
                  |x $ {} (:text |y) (:type :leaf) (:at 1634156154047) (:by |u0)
                :type :expr
                :at 1634156154047
                :by |u0
            :type :expr
            :at 1634155950016
            :by |u0
          |dbt:mul $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634155937387) (:by |u0)
              |j $ {} (:text |dbt:mul) (:type :leaf) (:at 1634155937387) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156164412) (:by |u0)
                  |j $ {} (:text |y) (:type :leaf) (:at 1634156164412) (:by |u0)
                :type :expr
                :at 1634156164412
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634156164412) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634156164412) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157120673) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634156164412) (:by |u0)
                        :type :expr
                        :at 1634157120131
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156977744) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156164412) (:by |u0)
                        :type :expr
                        :at 1634156164412
                        :by |u0
                    :type :expr
                    :at 1634156164412
                    :by |u0
                  |r $ {} (:text "|\"dbt_mul") (:type :leaf) (:at 1634156170317) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634156164412) (:by |u0)
                  |x $ {} (:text |y) (:type :leaf) (:at 1634156164412) (:by |u0)
                :type :expr
                :at 1634156164412
                :by |u0
            :type :expr
            :at 1634155937387
            :by |u0
          |dbt:sub $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634156175047) (:by |u0)
              |j $ {} (:text |dbt:sub) (:type :leaf) (:at 1634156177907) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156175047) (:by |u0)
                  |j $ {} (:text |y) (:type :leaf) (:at 1634156175047) (:by |u0)
                :type :expr
                :at 1634156175047
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634156175047) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634156175047) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157117697) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634156175047) (:by |u0)
                        :type :expr
                        :at 1634157117160
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156981905) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156175047) (:by |u0)
                        :type :expr
                        :at 1634156175047
                        :by |u0
                    :type :expr
                    :at 1634156175047
                    :by |u0
                  |r $ {} (:text "|\"dbt_sub") (:type :leaf) (:at 1634156180627) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634156175047) (:by |u0)
                  |x $ {} (:text |y) (:type :leaf) (:at 1634156175047) (:by |u0)
                :type :expr
                :at 1634156175047
                :by |u0
            :type :expr
            :at 1634156175047
            :by |u0
          |dbt:from-float $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634156355829) (:by |u0)
              |j $ {} (:text |dbt:from-float) (:type :leaf) (:at 1634156355829) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156368893) (:by |u0)
                  |j $ {} (:text |y) (:type :leaf) (:at 1634156369344) (:by |u0)
                :type :expr
                :at 1634156358977
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634156358977) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634156358977) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157137306) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634156358977) (:by |u0)
                        :type :expr
                        :at 1634157136738
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156969850) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156358977) (:by |u0)
                        :type :expr
                        :at 1634156358977
                        :by |u0
                    :type :expr
                    :at 1634156358977
                    :by |u0
                  |r $ {} (:text "|\"dbt_from_float") (:type :leaf) (:at 1634156367049) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634156370556) (:by |u0)
                  |x $ {} (:text |y) (:type :leaf) (:at 1634156370874) (:by |u0)
                :type :expr
                :at 1634156358977
                :by |u0
            :type :expr
            :at 1634156355829
            :by |u0
          |dbt $ {}
            :data $ {}
              |T $ {} (:text |defmacro) (:type :leaf) (:at 1634156429037) (:by |u0)
              |j $ {} (:text |dbt) (:type :leaf) (:at 1634268856357) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156430061) (:by |u0)
                :type :expr
                :at 1634156427204
                :by |u0
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1634269846085) (:by |u0)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |s) (:type :leaf) (:at 1634269860556) (:by |u0)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |turn-string) (:type :leaf) (:at 1634269865069) (:by |u0)
                              |j $ {} (:text |x) (:type :leaf) (:at 1634269871797) (:by |u0)
                            :type :expr
                            :at 1634269861138
                            :by |u0
                        :type :expr
                        :at 1634269846672
                        :by |u0
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |v) (:type :leaf) (:at 1634269866488) (:by |u0)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1634269867868) (:by |u0)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |starts-with?) (:type :leaf) (:at 1634269874952) (:by |u0)
                                  |j $ {} (:text |s) (:type :leaf) (:at 1634269879333) (:by |u0)
                                  |r $ {} (:text "|\"&") (:type :leaf) (:at 1634269993485) (:by |u0)
                                :type :expr
                                :at 1634269868237
                                :by |u0
                              |v $ {} (:text |s) (:type :leaf) (:at 1634269883452) (:by |u0)
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |str) (:type :leaf) (:at 1634269966497) (:by |u0)
                                  |b $ {} (:text "|\"&") (:type :leaf) (:at 1634269968159) (:by |u0)
                                  |j $ {} (:text |s) (:type :leaf) (:at 1634269970297) (:by |u0)
                                :type :expr
                                :at 1634269885363
                                :by |u0
                            :type :expr
                            :at 1634269866886
                            :by |u0
                        :type :expr
                        :at 1634269866351
                        :by |u0
                    :type :expr
                    :at 1634269846498
                    :by |u0
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |quasiquote) (:type :leaf) (:at 1634156651513) (:by |u0)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |dbt:parse) (:type :leaf) (:at 1634156438102) (:by |u0)
                          |j $ {} (:text |~v) (:type :leaf) (:at 1634269946297) (:by |u0)
                        :type :expr
                        :at 1634156431036
                        :by |u0
                    :type :expr
                    :at 1634156643561
                    :by |u0
                :type :expr
                :at 1634269845386
                :by |u0
            :type :expr
            :at 1634156427204
            :by |u0
          |dbt:to-float $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634156326252) (:by |u0)
              |j $ {} (:text |dbt:to-float) (:type :leaf) (:at 1634156326252) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156329285) (:by |u0)
                :type :expr
                :at 1634156329285
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634156329285) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634156329285) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157147972) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634156329285) (:by |u0)
                        :type :expr
                        :at 1634157147344
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156986183) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156329285) (:by |u0)
                        :type :expr
                        :at 1634156329285
                        :by |u0
                    :type :expr
                    :at 1634156329285
                    :by |u0
                  |r $ {} (:text "|\"dbt_to_float") (:type :leaf) (:at 1634156338881) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634156340996) (:by |u0)
                :type :expr
                :at 1634156329285
                :by |u0
            :type :expr
            :at 1634156326252
            :by |u0
          |dbt:parse $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634156199580) (:by |u0)
              |j $ {} (:text |dbt:parse) (:type :leaf) (:at 1634156234642) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |s) (:type :leaf) (:at 1634156767498) (:by |u0)
                :type :expr
                :at 1634156203015
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634156203015) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634156203015) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157107562) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634157043057) (:by |u0)
                        :type :expr
                        :at 1634157042131
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156962613) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156203015) (:by |u0)
                        :type :expr
                        :at 1634156203015
                        :by |u0
                    :type :expr
                    :at 1634156203015
                    :by |u0
                  |r $ {} (:text "|\"dbt_parse") (:type :leaf) (:at 1634156229060) (:by |u0)
                  |v $ {} (:text |s) (:type :leaf) (:at 1634156239621) (:by |u0)
                :type :expr
                :at 1634156203015
                :by |u0
            :type :expr
            :at 1634156199580
            :by |u0
          |dbt:round $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634231781527) (:by |u0)
              |j $ {} (:text |dbt:round) (:type :leaf) (:at 1634231781527) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634231783628) (:by |u0)
                  |b $ {} (:text |?) (:type :leaf) (:at 1634231790247) (:by |u0)
                  |j $ {} (:text |n) (:type :leaf) (:at 1634231789561) (:by |u0)
                :type :expr
                :at 1634231783628
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634231783628) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634231783628) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |or-current-path) (:type :leaf) (:at 1634231783628) (:by |u0)
                          |j $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634231783628) (:by |u0)
                        :type :expr
                        :at 1634231783628
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634231783628) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634231783628) (:by |u0)
                        :type :expr
                        :at 1634231783628
                        :by |u0
                    :type :expr
                    :at 1634231783628
                    :by |u0
                  |r $ {} (:text "|\"dbt_round") (:type :leaf) (:at 1634231797414) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634231783628) (:by |u0)
                  |x $ {}
                    :data $ {}
                      |D $ {} (:text |either) (:type :leaf) (:at 1634231805212) (:by |u0)
                      |T $ {} (:text |n) (:type :leaf) (:at 1634231793851) (:by |u0)
                      |j $ {} (:text |0) (:type :leaf) (:at 1634231800534) (:by |u0)
                    :type :expr
                    :at 1634231798825
                    :by |u0
                :type :expr
                :at 1634231783628
                :by |u0
            :type :expr
            :at 1634231781527
            :by |u0
          |lib-path $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1634156950933) (:by |u0)
              |j $ {} (:text |lib-path) (:type :leaf) (:at 1634156950933) (:by |u0)
              |r $ {} (:text "|\"/dylibs/libcalcit_dbt") (:type :leaf) (:at 1634157078349) (:by |u0)
            :type :expr
            :at 1634156950933
            :by |u0
          |dbt:format $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634156254602) (:by |u0)
              |j $ {} (:text |dbt:format) (:type :leaf) (:at 1634156254602) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156263289) (:by |u0)
                :type :expr
                :at 1634156263289
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib-edn) (:type :leaf) (:at 1634156263289) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1634156263289) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |or-current-path) (:type :leaf) (:at 1634157133798) (:by |u0)
                          |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634156263289) (:by |u0)
                        :type :expr
                        :at 1634157133284
                        :by |u0
                      |r $ {} (:text |lib-path) (:type :leaf) (:at 1634156950489) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156263289) (:by |u0)
                        :type :expr
                        :at 1634156263289
                        :by |u0
                    :type :expr
                    :at 1634156263289
                    :by |u0
                  |r $ {} (:text "|\"dbt_format") (:type :leaf) (:at 1634156270097) (:by |u0)
                  |v $ {} (:text |x) (:type :leaf) (:at 1634157741782) (:by |u0)
                :type :expr
                :at 1634156263289
                :by |u0
            :type :expr
            :at 1634156254602
            :by |u0
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1634155899566
          :by |u0
        :configs $ {}
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1634155899566) (:by |u0)
            |j $ {} (:text |dbt.core) (:type :leaf) (:at 1634155899566) (:by |u0)
            |r $ {}
              :data $ {}
                |D $ {} (:text |:require) (:type :leaf) (:at 1634156100791) (:by |u0)
                |L $ {}
                  :data $ {}
                    |T $ {} (:text |dbt.$meta) (:type :leaf) (:at 1634156108711) (:by |u0)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1634156105325) (:by |u0)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1634156105325) (:by |u0)
                      :type :expr
                      :at 1634156105325
                      :by |u0
                  :type :expr
                  :at 1634156105325
                  :by |u0
                |T $ {}
                  :data $ {}
                    |T $ {} (:text |dbt.util) (:type :leaf) (:at 1634156110802) (:by |u0)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1634156097503) (:by |u0)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156097503) (:by |u0)
                        |j $ {} (:text |or-current-path) (:type :leaf) (:at 1634156097503) (:by |u0)
                      :type :expr
                      :at 1634156097503
                      :by |u0
                  :type :expr
                  :at 1634156097503
                  :by |u0
              :type :expr
              :at 1634156098257
              :by |u0
          :type :expr
          :at 1634155899566
          :by |u0
      |dbt.main $ {}
        :defs $ {}
          |run-tests $ {}
            :data $ {}
              |yyT $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:round) (:type :leaf) (:at 1634232106939) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232109095) (:by |u0)
                          |T $ {} (:text |3.333) (:type :leaf) (:at 1634270076561) (:by |u0)
                        :type :expr
                        :at 1634232108577
                        :by |u0
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232110752) (:by |u0)
                      |T $ {} (:text |3) (:type :leaf) (:at 1634270085254) (:by |u0)
                    :type :expr
                    :at 1634232110256
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yyj $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:round) (:type :leaf) (:at 1634232113313) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232116221) (:by |u0)
                          |T $ {} (:text |3.333) (:type :leaf) (:at 1634270078208) (:by |u0)
                        :type :expr
                        :at 1634232115689
                        :by |u0
                      |r $ {} (:text |0) (:type :leaf) (:at 1634231909816) (:by |u0)
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232120461) (:by |u0)
                      |T $ {} (:text |3) (:type :leaf) (:at 1634270083728) (:by |u0)
                    :type :expr
                    :at 1634232119888
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yyr $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:round) (:type :leaf) (:at 1634232122674) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232124610) (:by |u0)
                          |T $ {} (:text |3.333) (:type :leaf) (:at 1634270080353) (:by |u0)
                        :type :expr
                        :at 1634232124102
                        :by |u0
                      |r $ {} (:text |1) (:type :leaf) (:at 1634231909816) (:by |u0)
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232126671) (:by |u0)
                      |T $ {} (:text |3.3) (:type :leaf) (:at 1634270082063) (:by |u0)
                    :type :expr
                    :at 1634232126122
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yyv $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:round) (:type :leaf) (:at 1634232129189) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232131108) (:by |u0)
                          |T $ {} (:text |3.333) (:type :leaf) (:at 1634270087399) (:by |u0)
                        :type :expr
                        :at 1634232130570
                        :by |u0
                      |r $ {} (:text |2) (:type :leaf) (:at 1634231909816) (:by |u0)
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232133388) (:by |u0)
                      |T $ {} (:text |3.33) (:type :leaf) (:at 1634270088930) (:by |u0)
                    :type :expr
                    :at 1634232132718
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yyw $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634232418273) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |dbt:div) (:type :leaf) (:at 1634232445305) (:by |u0)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |dbt) (:type :leaf) (:at 1634232420694) (:by |u0)
                          |j $ {} (:text |11) (:type :leaf) (:at 1634270090283) (:by |u0)
                        :type :expr
                        :at 1634232419036
                        :by |u0
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |dbt) (:type :leaf) (:at 1634232449102) (:by |u0)
                          |j $ {} (:text |19) (:type :leaf) (:at 1634270092115) (:by |u0)
                        :type :expr
                        :at 1634232449102
                        :by |u0
                    :type :expr
                    :at 1634232441964
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |dbt) (:type :leaf) (:at 1634232453576) (:by |u0)
                      |j $ {} (:text |19) (:type :leaf) (:at 1634270093487) (:by |u0)
                    :type :expr
                    :at 1634232453576
                    :by |u0
                :type :expr
                :at 1634232416785
                :by |u0
              |yyx $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1634232317762) (:by |u0)
                  |j $ {} (:text "|\"Passed test.") (:type :leaf) (:at 1634232322514) (:by |u0)
                :type :expr
                :at 1634232316319
                :by |u0
              |yywT $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634232418273) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |dbt:mul) (:type :leaf) (:at 1634232486206) (:by |u0)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |dbt) (:type :leaf) (:at 1634232420694) (:by |u0)
                          |j $ {} (:text |19) (:type :leaf) (:at 1634270094775) (:by |u0)
                        :type :expr
                        :at 1634232419036
                        :by |u0
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |dbt) (:type :leaf) (:at 1634232449102) (:by |u0)
                          |j $ {} (:text |19) (:type :leaf) (:at 1634270096393) (:by |u0)
                        :type :expr
                        :at 1634232449102
                        :by |u0
                    :type :expr
                    :at 1634232441964
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |dbt) (:type :leaf) (:at 1634232453576) (:by |u0)
                      |j $ {} (:text |11) (:type :leaf) (:at 1634270097722) (:by |u0)
                    :type :expr
                    :at 1634232453576
                    :by |u0
                :type :expr
                :at 1634232416785
                :by |u0
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |dbt:add) (:type :leaf) (:at 1634232007275) (:by |u0)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |dbt:add) (:type :leaf) (:at 1634231997245) (:by |u0)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |dbt) (:type :leaf) (:at 1634231999345) (:by |u0)
                              |T $ {} (:text |1) (:type :leaf) (:at 1634270050126) (:by |u0)
                            :type :expr
                            :at 1634231998714
                            :by |u0
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |dbt) (:type :leaf) (:at 1634232002035) (:by |u0)
                              |T $ {} (:text |1) (:type :leaf) (:at 1634270051911) (:by |u0)
                            :type :expr
                            :at 1634232001272
                            :by |u0
                        :type :expr
                        :at 1634231909816
                        :by |u0
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |dbt) (:type :leaf) (:at 1634232198893) (:by |u0)
                          |j $ {} (:text |1) (:type :leaf) (:at 1634270053230) (:by |u0)
                        :type :expr
                        :at 1634232198893
                        :by |u0
                    :type :expr
                    :at 1634232003529
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232013322) (:by |u0)
                      |T $ {} (:text |15) (:type :leaf) (:at 1634270054514) (:by |u0)
                    :type :expr
                    :at 1634232012746
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yj $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1634232030979) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232035254) (:by |u0)
                          |T $ {} (:text |1) (:type :leaf) (:at 1634270057025) (:by |u0)
                        :type :expr
                        :at 1634232034435
                        :by |u0
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |dbt:add) (:type :leaf) (:at 1634232040613) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |dbt) (:type :leaf) (:at 1634232037797) (:by |u0)
                              |T $ {} (:text |1) (:type :leaf) (:at 1634270058635) (:by |u0)
                            :type :expr
                            :at 1634232036859
                            :by |u0
                        :type :expr
                        :at 1634232038298
                        :by |u0
                      |v $ {}
                        :data $ {}
                          |D $ {} (:text |dbt:add) (:type :leaf) (:at 1634232048375) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |dbt) (:type :leaf) (:at 1634232045360) (:by |u0)
                              |T $ {} (:text |1) (:type :leaf) (:at 1634270059811) (:by |u0)
                            :type :expr
                            :at 1634232044588
                            :by |u0
                        :type :expr
                        :at 1634232046104
                        :by |u0
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |dbt:add) (:type :leaf) (:at 1634232053439) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |dbt) (:type :leaf) (:at 1634232050917) (:by |u0)
                              |T $ {} (:text |1) (:type :leaf) (:at 1634270061336) (:by |u0)
                            :type :expr
                            :at 1634232050010
                            :by |u0
                        :type :expr
                        :at 1634232051558
                        :by |u0
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232055270) (:by |u0)
                      |T $ {} (:text |11) (:type :leaf) (:at 1634270062693) (:by |u0)
                    :type :expr
                    :at 1634232054663
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yr $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:sub) (:type :leaf) (:at 1634232061807) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232063482) (:by |u0)
                          |T $ {} (:text |44) (:type :leaf) (:at 1634270064932) (:by |u0)
                        :type :expr
                        :at 1634232062969
                        :by |u0
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232065199) (:by |u0)
                          |T $ {} (:text |6) (:type :leaf) (:at 1634270066366) (:by |u0)
                        :type :expr
                        :at 1634232064674
                        :by |u0
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232066704) (:by |u0)
                      |T $ {} (:text |466) (:type :leaf) (:at 1634270067866) (:by |u0)
                    :type :expr
                    :at 1634232066178
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yv $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:to-float) (:type :leaf) (:at 1634232072573) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232074321) (:by |u0)
                          |T $ {} (:text |33) (:type :leaf) (:at 1634270070410) (:by |u0)
                        :type :expr
                        :at 1634232073848
                        :by |u0
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1634231909816) (:by |u0)
                      |j $ {} (:text |4) (:type :leaf) (:at 1634231909816) (:by |u0)
                      |r $ {} (:text |0) (:type :leaf) (:at 1634231909816) (:by |u0)
                    :type :expr
                    :at 1634231909816
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yx $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:to-float) (:type :leaf) (:at 1634232081347) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634232237500) (:by |u0)
                          |T $ {} (:text |66) (:type :leaf) (:at 1634270071894) (:by |u0)
                        :type :expr
                        :at 1634232234056
                        :by |u0
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1634231909816) (:by |u0)
                      |j $ {} (:text |-4) (:type :leaf) (:at 1634231909816) (:by |u0)
                      |r $ {} (:text |4) (:type :leaf) (:at 1634231909816) (:by |u0)
                    :type :expr
                    :at 1634231909816
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |yy $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:from-float) (:type :leaf) (:at 1634232096209) (:by |u0)
                      |j $ {} (:text |4) (:type :leaf) (:at 1634231909816) (:by |u0)
                      |r $ {} (:text |4) (:type :leaf) (:at 1634231909816) (:by |u0)
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232241514) (:by |u0)
                      |T $ {} (:text |88) (:type :leaf) (:at 1634270074981) (:by |u0)
                    :type :expr
                    :at 1634232238647
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |T $ {} (:text |defn) (:type :leaf) (:at 1634231908674) (:by |u0)
              |j $ {} (:text |run-tests) (:type :leaf) (:at 1634231908674) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1634231908674
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634231917695) (:by |u0)
                      |T $ {} (:text |1) (:type :leaf) (:at 1634270039309) (:by |u0)
                    :type :expr
                    :at 1634231915945
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634231923003) (:by |u0)
                      |T $ {} (:text |1) (:type :leaf) (:at 1634270041250) (:by |u0)
                    :type :expr
                    :at 1634231921482
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |x $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634231978870) (:by |u0)
                      |T $ {} (:text |1.3) (:type :leaf) (:at 1634270044237) (:by |u0)
                    :type :expr
                    :at 1634231977336
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634231980945) (:by |u0)
                      |T $ {} (:text |1.3) (:type :leaf) (:at 1634270042823) (:by |u0)
                    :type :expr
                    :at 1634231980436
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
              |y $ {}
                :data $ {}
                  |T $ {} (:text |assert=) (:type :leaf) (:at 1634231909816) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:add) (:type :leaf) (:at 1634231992039) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634231984603) (:by |u0)
                          |T $ {} (:text |1) (:type :leaf) (:at 1634270045424) (:by |u0)
                        :type :expr
                        :at 1634231983997
                        :by |u0
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |dbt) (:type :leaf) (:at 1634231986473) (:by |u0)
                          |T $ {} (:text |1) (:type :leaf) (:at 1634270046865) (:by |u0)
                        :type :expr
                        :at 1634231985502
                        :by |u0
                    :type :expr
                    :at 1634231909816
                    :by |u0
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |dbt) (:type :leaf) (:at 1634232011642) (:by |u0)
                      |T $ {} (:text |19) (:type :leaf) (:at 1634270048259) (:by |u0)
                    :type :expr
                    :at 1634232011077
                    :by |u0
                :type :expr
                :at 1634231909816
                :by |u0
            :type :expr
            :at 1634231908674
            :by |u0
          |main! $ {}
            :data $ {}
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1634158319303) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:format) (:type :leaf) (:at 1634158324403) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |dbt:round) (:type :leaf) (:at 1634231739229) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |dbt) (:type :leaf) (:at 1634231745099) (:by |u0)
                              |j $ {} (:text |13.23) (:type :leaf) (:at 1634270028247) (:by |u0)
                            :type :expr
                            :at 1634231745099
                            :by |u0
                        :type :expr
                        :at 1634231735414
                        :by |u0
                    :type :expr
                    :at 1634158319815
                    :by |u0
                :type :expr
                :at 1634158317851
                :by |u0
              |yj $ {}
                :data $ {}
                  |T $ {} (:text |run-tests) (:type :leaf) (:at 1634231907565) (:by |u0)
                :type :expr
                :at 1634231900783
                :by |u0
              |T $ {} (:text |defn) (:type :leaf) (:at 1634155909228) (:by |u0)
              |j $ {} (:text |main!) (:type :leaf) (:at 1634155909228) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1634155909228
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1634155913766) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |dbt:format) (:type :leaf) (:at 1634157727821) (:by |u0)
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |w-log) (:type :leaf) (:at 1634233226359) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |dbt) (:type :leaf) (:at 1634156744886) (:by |u0)
                              |j $ {} (:text |13.23) (:type :leaf) (:at 1634270018110) (:by |u0)
                            :type :expr
                            :at 1634156406964
                            :by |u0
                        :type :expr
                        :at 1634157767100
                        :by |u0
                    :type :expr
                    :at 1634157719423
                    :by |u0
                :type :expr
                :at 1634155912703
                :by |u0
              |x $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1634158319303) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:format) (:type :leaf) (:at 1634158324403) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |dbt:add) (:type :leaf) (:at 1634158327762) (:by |u0)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |dbt) (:type :leaf) (:at 1634158335213) (:by |u0)
                              |j $ {} (:text |13.23) (:type :leaf) (:at 1634270023133) (:by |u0)
                            :type :expr
                            :at 1634158333215
                            :by |u0
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |dbt) (:type :leaf) (:at 1634158363047) (:by |u0)
                              |j $ {} (:text |6.6) (:type :leaf) (:at 1634270024438) (:by |u0)
                            :type :expr
                            :at 1634158361596
                            :by |u0
                        :type :expr
                        :at 1634158324749
                        :by |u0
                    :type :expr
                    :at 1634158319815
                    :by |u0
                :type :expr
                :at 1634158317851
                :by |u0
              |y $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1634158319303) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:format) (:type :leaf) (:at 1634158324403) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |dbt:add) (:type :leaf) (:at 1634158327762) (:by |u0)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |dbt) (:type :leaf) (:at 1634158335213) (:by |u0)
                              |j $ {} (:text |6) (:type :leaf) (:at 1634270026946) (:by |u0)
                            :type :expr
                            :at 1634158333215
                            :by |u0
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |dbt) (:type :leaf) (:at 1634158363047) (:by |u0)
                              |j $ {} (:text |6) (:type :leaf) (:at 1634270025674) (:by |u0)
                            :type :expr
                            :at 1634158361596
                            :by |u0
                        :type :expr
                        :at 1634158324749
                        :by |u0
                    :type :expr
                    :at 1634158319815
                    :by |u0
                :type :expr
                :at 1634158317851
                :by |u0
            :type :expr
            :at 1634155909228
            :by |u0
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1634155904033
          :by |u0
        :configs $ {}
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1634155904033) (:by |u0)
            |j $ {} (:text |dbt.main) (:type :leaf) (:at 1634155904033) (:by |u0)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1634156419922) (:by |u0)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |dbt.core) (:type :leaf) (:at 1634156423319) (:by |u0)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1634156424133) (:by |u0)
                    |r $ {}
                      :data $ {}
                        |uT $ {} (:text |dbt:mul) (:type :leaf) (:at 1634232468679) (:by |u0)
                        |T $ {} (:text |dbt) (:type :leaf) (:at 1634268873758) (:by |u0)
                        |j $ {} (:text |dbt:format) (:type :leaf) (:at 1634157730781) (:by |u0)
                        |r $ {} (:text |dbt:add) (:type :leaf) (:at 1634158330938) (:by |u0)
                        |t $ {} (:text |dbt:sub) (:type :leaf) (:at 1634232222045) (:by |u0)
                        |u $ {} (:text |dbt:div) (:type :leaf) (:at 1634232466151) (:by |u0)
                        |v $ {} (:text |dbt:round) (:type :leaf) (:at 1634231845144) (:by |u0)
                        |x $ {} (:text |dbt:to-float) (:type :leaf) (:at 1634232087121) (:by |u0)
                        |y $ {} (:text |dbt:from-float) (:type :leaf) (:at 1634232101675) (:by |u0)
                      :type :expr
                      :at 1634156425226
                      :by |u0
                  :type :expr
                  :at 1634156420862
                  :by |u0
              :type :expr
              :at 1634156419252
              :by |u0
          :type :expr
          :at 1634155904033
          :by |u0
      |dbt.util $ {}
        :defs $ {}
          |get-dylib-ext $ {}
            :data $ {}
              |T $ {} (:text |defmacro) (:type :leaf) (:at 1634156080778) (:by |u0)
              |j $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1634156080778) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1634156080778
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1634156080778) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |&get-os) (:type :leaf) (:at 1634156080778) (:by |u0)
                    :type :expr
                    :at 1634156080778
                    :by |u0
                  |r $ {} (:text "|\".so") (:type :leaf) (:at 1634156080778) (:by |u0)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:macos) (:type :leaf) (:at 1634156080778) (:by |u0)
                      |j $ {} (:text "|\".dylib") (:type :leaf) (:at 1634156080778) (:by |u0)
                    :type :expr
                    :at 1634156080778
                    :by |u0
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:windows) (:type :leaf) (:at 1634156080778) (:by |u0)
                      |j $ {} (:text "|\".dll") (:type :leaf) (:at 1634156080778) (:by |u0)
                    :type :expr
                    :at 1634156080778
                    :by |u0
                :type :expr
                :at 1634156080778
                :by |u0
            :type :expr
            :at 1634156080778
            :by |u0
          |or-current-path $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1634156045323) (:by |u0)
              |j $ {} (:text |or-current-path) (:type :leaf) (:at 1634156045323) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |p) (:type :leaf) (:at 1634156066523) (:by |u0)
                :type :expr
                :at 1634156066523
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1634156066523) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |blank?) (:type :leaf) (:at 1634156066523) (:by |u0)
                      |j $ {} (:text |p) (:type :leaf) (:at 1634156066523) (:by |u0)
                    :type :expr
                    :at 1634156066523
                    :by |u0
                  |r $ {} (:text "|\".") (:type :leaf) (:at 1634156066523) (:by |u0)
                  |v $ {} (:text |p) (:type :leaf) (:at 1634156066523) (:by |u0)
                :type :expr
                :at 1634156066523
                :by |u0
            :type :expr
            :at 1634156045323
            :by |u0
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1634156018357
          :by |u0
        :configs $ {}
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1634156018357) (:by |u0)
            |j $ {} (:text |dbt.util) (:type :leaf) (:at 1634156018357) (:by |u0)
          :type :expr
          :at 1634156018357
          :by |u0
  :users $ {}
    |u0 $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |u0) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
