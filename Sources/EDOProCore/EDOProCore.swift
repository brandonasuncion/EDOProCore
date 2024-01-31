// @_exported import Cxx
@_exported import EDOProCoreCxx
// @_exported import CLua

@inlinable
@inline(__always)
public func _forceLinkCoreSymbols(cduel: OCG_Duel) {
    print(card.relation_map.self)
    print(effect_indexer.self)
    print(chain.opmap.self)
    print(field_effect.oath_effects.self)
    print(field_effect.gain_effects.self)
    print(interpreter.coroutine_map.self)
}
