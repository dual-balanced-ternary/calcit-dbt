
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
                  |j $ {} (:type :leaf) (:by |u0) (:at 1634156175047) (:text |y)
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
                  |x $ {} (:type :leaf) (:by |u0) (:at 1634156175047) (:text |y)
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
          |dbt! $ {}
            :data $ {}
              |T $ {} (:text |defmacro) (:type :leaf) (:at 1634156429037) (:by |u0)
              |j $ {} (:text |dbt!) (:type :leaf) (:at 1634156741544) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1634156430061) (:by |u0)
                :type :expr
                :at 1634156427204
                :by |u0
              |v $ {}
                :data $ {}
                  |D $ {} (:text |quasiquote) (:type :leaf) (:at 1634156651513) (:by |u0)
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |dbt:parse) (:type :leaf) (:at 1634156438102) (:by |u0)
                      |j $ {} (:text |~x) (:type :leaf) (:at 1634156654762) (:by |u0)
                    :type :expr
                    :at 1634156431036
                    :by |u0
                :type :expr
                :at 1634156643561
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
          |main! $ {}
            :data $ {}
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
                          |D $ {} (:text |w-log) (:type :leaf) (:at 1634157769352) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |dbt!) (:type :leaf) (:at 1634156744886) (:by |u0)
                              |j $ {} (:text "|\"&13.23") (:type :leaf) (:at 1634157827857) (:by |u0)
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
                              |T $ {} (:text |dbt!) (:type :leaf) (:at 1634158335213) (:by |u0)
                              |j $ {} (:text "|\"&13.23") (:type :leaf) (:at 1634158337831) (:by |u0)
                            :type :expr
                            :at 1634158333215
                            :by |u0
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |dbt!) (:type :leaf) (:at 1634158363047) (:by |u0)
                              |j $ {} (:text "|\"&6.6") (:type :leaf) (:at 1634158366865) (:by |u0)
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
                              |T $ {} (:text |dbt!) (:type :leaf) (:at 1634158335213) (:by |u0)
                              |j $ {} (:text "|\"&6") (:type :leaf) (:at 1634158378318) (:by |u0)
                            :type :expr
                            :at 1634158333215
                            :by |u0
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |dbt!) (:type :leaf) (:at 1634158363047) (:by |u0)
                              |j $ {} (:text "|\"&6") (:type :leaf) (:at 1634158381110) (:by |u0)
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
                        |T $ {} (:text |dbt!) (:type :leaf) (:at 1634156746475) (:by |u0)
                        |j $ {} (:text |dbt:format) (:type :leaf) (:at 1634157730781) (:by |u0)
                        |r $ {} (:text |dbt:add) (:type :leaf) (:at 1634158330938) (:by |u0)
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
