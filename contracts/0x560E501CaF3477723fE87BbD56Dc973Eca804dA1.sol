contract main {




// =====================  Runtime code  =====================


uint8 mode;
address stor0; offset 8
uint128 imageGenerationCodeMD5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint16 stor6; offset 20
uint16 remainingCats;
uint16 remainingGenesisCats; offset 16
uint16 rescueIndex; offset 32
array of uint256 stor7;
uint256 searchSeed;
mapping of struct stor4275;
mapping of struct stor4276;
mapping of uint256 catNames;
mapping of address catOwners;
mapping of uint256 balanceOf;
mapping of uint256 pendingWithdrawals;

function name() {
    return name[0 len name.length]
}

function remainingGenesisCats() {
    return remainingGenesisCats
}

function totalSupply() {
    return totalSupply
}

function remainingCats() {
    return remainingCats
}

function mode() {
    require mode <= 3
    return mode
}

function decimals() {
    return decimals
}

function catOwners(bytes5 arg1) {
    return catOwners[Mask(40, 216, arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function catNames(bytes5 arg1) {
    return catNames[Mask(40, 216, arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function searchSeed() {
    return searchSeed
}

function imageGenerationCodeMD5() {
    return Mask(128, 128, imageGenerationCodeMD5)
}

function rescueIndex() {
    return rescueIndex
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function _fallback() payable {
    revert
}

function rescueOrder(uint256 arg1) {
    require arg1 < 25600
    return (stor7[arg1 / 6] / 256^(5 * arg1 % 6) << 216)
}

function disableBeforeActivation() {
    require msg.sender == stor0
    require mode <= 3
    require not mode
    mode = 1
}

function activate() {
    require msg.sender == stor0
    require mode <= 3
    require not mode
    searchSeed = block.hash(block.number - 1)
    mode = 3
}

function activateInTestMode() {
    require msg.sender == stor0
    require mode <= 3
    require not mode
    searchSeed = 0x5713bdf5d1c3398a8f12f881f0f03b5025b6f9c17a97441a694d5752beb92a3d
    mode = 2
}

function adoptionRequests(bytes5 arg1) {
    return bool(stor10B4[Mask(40, 216, arg1)].field_0), 
           stor10B4[Mask(40, 216, arg1)].field_8 << 216,
           stor10B4[Mask(40, 216, arg1)].field_0,
           stor10B4[Mask(40, 216, arg1)].field_256
}

function withdraw() {
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nameCat(bytes5 arg1, bytes32 arg2) {
    require catOwners[Mask(40, 216, arg1)] == msg.sender
    require not catNames[Mask(40, 216, arg1)]
    require not stor10B3[Mask(40, 216, arg1)].field_0
    catNames[Mask(40, 216, arg1)] = arg2
    emit CatNamed(arg2, Mask(40, 216, arg1));
}

function adoptionOffers(bytes5 arg1) {
    return bool(stor10B3[Mask(40, 216, arg1)].field_0), 
           stor10B3[Mask(40, 216, arg1)].field_8 << 216,
           stor10B3[Mask(40, 216, arg1)].field_0,
           stor10B3[Mask(40, 216, arg1)].field_256,
           stor10B3[Mask(40, 216, arg1)].field_512
}

function getCatDetails(bytes5 arg1) {
    return Mask(40, 216, arg1), 
           catOwners[Mask(40, 216, arg1)],
           catNames[Mask(40, 216, arg1)],
           stor10B3[Mask(40, 216, arg1)].field_512,
           stor10B3[Mask(40, 216, arg1)].field_256,
           stor10B4[Mask(40, 216, arg1)].field_0,
           stor10B4[Mask(40, 216, arg1)].field_256
}

function makeAdoptionOfferToAddress(bytes5 arg1, uint256 arg2, address arg3) {
    require catOwners[Mask(40, 216, arg1)] == msg.sender
    require arg3 != msg.sender
    stor10B3[Mask(40, 216, arg1)].field_0 = 1
    stor10B3[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B3[Mask(40, 216, arg1)].field_48 = msg.sender
    stor10B3[Mask(40, 216, arg1)].field_256 = arg2
    stor10B3[Mask(40, 216, arg1)].field_512 = arg3
    emit AdoptionOffered(arg2, Mask(40, 216, arg1), arg3);
}

function makeAdoptionOffer(bytes5 arg1, uint256 arg2) {
    require catOwners[Mask(40, 216, arg1)] == msg.sender
    require arg2 > 0
    stor10B3[Mask(40, 216, arg1)].field_0 = 1
    stor10B3[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B3[Mask(40, 216, arg1)].field_48 = msg.sender
    stor10B3[Mask(40, 216, arg1)].field_256 = arg2
    stor10B3[Mask(40, 216, arg1)].field_512 = 0
    stor10B3[Mask(40, 216, arg1)].field_768 = 0
    emit AdoptionOffered(arg2, Mask(40, 216, arg1), 0);
}

function cancelAdoptionOffer(bytes5 arg1) {
    require catOwners[Mask(40, 216, arg1)] == msg.sender
    stor10B3[Mask(40, 216, arg1)].field_0 = 0
    stor10B3[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B3[Mask(40, 216, arg1)].field_48 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_512 = 0
    stor10B3[Mask(40, 216, arg1)].field_768 = 0
    emit AdoptionOfferCancelled(Mask(40, 216, arg1));
}

function getCatIds() {
    if rescueIndex:
        mem[128 len 32 * rescueIndex] = code.data[18656 len 32 * rescueIndex]
    idx = 0
    while idx < rescueIndex:
        require idx < 25600
        require idx < rescueIndex
        mem[(32 * idx) + 128] = stor7[idx / 6] / 256^(5 * idx % 6) << 216
        idx = idx + 1
        continue 
    mem[(32 * rescueIndex) + 192 len floor32(rescueIndex)] = mem[128 len floor32(rescueIndex)]
    return Array(len=remainingCats, data=mem[128 len floor32(rescueIndex)], mem[(32 * rescueIndex) + floor32(rescueIndex) + 192 len (32 * rescueIndex) - floor32(rescueIndex)]), 
}

function cancelAdoptionRequest(bytes5 arg1) {
    require stor10B4[Mask(40, 216, arg1)].field_0
    require stor10B4[Mask(40, 216, arg1)].field_48 == msg.sender
    stor10B4[Mask(40, 216, arg1)].field_0 = 0
    stor10B4[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B4[Mask(40, 216, arg1)].field_48 = 0
    stor10B4[Mask(40, 216, arg1)].field_256 = 0
    stor10B4[Mask(40, 216, arg1)].field_256 = 0
    call msg.sender with:
       value stor10B4[Mask(40, 216, arg1)].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AdoptionRequestCancelled(Mask(40, 216, arg1));
}

function makeAdoptionRequest(bytes5 arg1) payable {
    require catOwners[Mask(40, 216, arg1)] != msg.sender
    require catOwners[Mask(40, 216, arg1)]
    require msg.value > 0
    require msg.value > stor10B4[Mask(40, 216, arg1)].field_256
    if stor10B4[Mask(40, 216, arg1)].field_256 > 0:
        pendingWithdrawals[stor10B4[Mask(40, 216, arg1)].field_0] += stor10B4[Mask(40, 216, arg1)].field_256
    stor10B4[Mask(40, 216, arg1)].field_0 = 1
    stor10B4[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B4[Mask(40, 216, arg1)].field_48 = msg.sender
    stor10B4[Mask(40, 216, arg1)].field_256 = msg.value
    emit AdoptionRequested(msg.value, Mask(40, 216, arg1), msg.sender);
}

function getCatNames() {
    if rescueIndex:
        mem[128 len 32 * rescueIndex] = code.data[18656 len 32 * rescueIndex]
    idx = 0
    while idx < rescueIndex:
        require idx < 25600
        mem[0] = stor7[idx / 6] / 256^(5 * idx % 6) << 216
        mem[32] = 4277
        require idx < rescueIndex
        mem[(32 * idx) + 128] = catNames[stor7[idx / 6] / 256^(5 * idx % 6) << 216]
        idx = idx + 1
        continue 
    mem[(32 * rescueIndex) + 192 len floor32(rescueIndex)] = mem[128 len floor32(rescueIndex)]
    return Array(len=remainingCats, data=mem[128 len floor32(rescueIndex)], mem[(32 * rescueIndex) + floor32(rescueIndex) + 192 len (32 * rescueIndex) - floor32(rescueIndex)]), 
}

function getCatOwners() {
    if rescueIndex:
        mem[128 len 32 * rescueIndex] = code.data[18656 len 32 * rescueIndex]
    idx = 0
    while idx < rescueIndex:
        require idx < 25600
        mem[0] = stor7[idx / 6] / 256^(5 * idx % 6) << 216
        mem[32] = 4278
        require idx < rescueIndex
        mem[(32 * idx) + 128] = catOwners[stor7[idx / 6] / 256^(5 * idx % 6) << 216]
        idx = idx + 1
        continue 
    mem[(32 * rescueIndex) + 192 len floor32(rescueIndex)] = mem[128 len floor32(rescueIndex)]
    return Array(len=remainingCats, data=mem[128 len floor32(rescueIndex)], mem[(32 * rescueIndex) + floor32(rescueIndex) + 192 len (32 * rescueIndex) - floor32(rescueIndex)]), 
}

function getCatRequestPrices() {
    if rescueIndex:
        mem[128 len 32 * rescueIndex] = code.data[18656 len 32 * rescueIndex]
    s = 0
    idx = 0
    while idx < rescueIndex:
        require idx < 25600
        mem[0] = stor7[idx / 6] / 256^(5 * idx % 6) << 216
        mem[32] = 4276
        require idx < rescueIndex
        mem[(32 * idx) + 128] = stor10B4[stor7[idx / 6] / 256^(5 * idx % 6) << 216].field_256
        s = stor7[idx / 6] / 256^(5 * idx % 6) << 216
        idx = idx + 1
        continue 
    mem[(32 * rescueIndex) + 192 len floor32(rescueIndex)] = mem[128 len floor32(rescueIndex)]
    return Array(len=remainingCats, data=mem[128 len floor32(rescueIndex)], mem[(32 * rescueIndex) + floor32(rescueIndex) + 192 len (32 * rescueIndex) - floor32(rescueIndex)]), 
}

function giveCat(bytes5 arg1, address arg2) {
    require catOwners[Mask(40, 216, arg1)] == msg.sender
    catOwners[Mask(40, 216, arg1)] = arg2
    balanceOf[address(msg.sender)]--
    balanceOf[address(arg2)]++
    stor10B3[Mask(40, 216, arg1)].field_0 = 0
    stor10B3[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B3[Mask(40, 216, arg1)].field_48 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_512 = 0
    stor10B3[Mask(40, 216, arg1)].field_768 = 0
    if stor10B4[Mask(40, 216, arg1)].field_48 == arg2:
        pendingWithdrawals[address(arg2)] += stor10B4[Mask(40, 216, arg1)].field_256
        stor10B4[Mask(40, 216, arg1)].field_0 = 0
        stor10B4[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
        stor10B4[Mask(40, 216, arg1)].field_48 = 0
        stor10B4[Mask(40, 216, arg1)].field_256 = 0
        stor10B4[Mask(40, 216, arg1)].field_256 = 0
    emit Transfer(1, msg.sender, arg2);
    emit CatAdopted(0, Mask(40, 216, arg1), msg.sender, arg2);
}

function getCatOfferPrices() {
    if rescueIndex:
        mem[128 len 32 * rescueIndex] = code.data[18656 len 32 * rescueIndex]
    s = 0
    idx = 0
    while idx < rescueIndex:
        require idx < 25600
        mem[0] = stor7[idx / 6] / 256^(5 * idx % 6) << 216
        mem[32] = 4275
        if stor10B3[stor7[idx / 6] / 256^(5 * idx % 6) << 216].field_0:
            mem[0] = stor7[idx / 6] / 256^(5 * idx % 6) << 216
            mem[32] = 4275
            if not stor10B3[stor7[idx / 6] / 256^(5 * idx % 6) << 216].field_512:
                mem[0] = stor7[idx / 6] / 256^(5 * idx % 6) << 216
                mem[32] = 4275
                require idx < rescueIndex
                mem[(32 * idx) + 128] = stor10B3[stor7[idx / 6] / 256^(5 * idx % 6) << 216].field_256
        s = stor7[idx / 6] / 256^(5 * idx % 6) << 216
        idx = idx + 1
        continue 
    mem[(32 * rescueIndex) + 192 len floor32(rescueIndex)] = mem[128 len floor32(rescueIndex)]
    return Array(len=remainingCats, data=mem[128 len floor32(rescueIndex)], mem[(32 * rescueIndex) + floor32(rescueIndex) + 192 len (32 * rescueIndex) - floor32(rescueIndex)]), 
}

function rescueCat(bytes32 arg1) {
    require mode <= 3
    if mode != 3:
        require mode <= 3
        require mode == 2
    require remainingCats > 0
    require not Mask(8, -(('mask_shl', 256, 0, -3, ('sha3', ('data', ('param', 'arg1'), ('stor', ('name', 'searchSeed', 4274))))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('sha3', ('data', ('param', 'arg1'), ('stor', ('name', 'searchSeed', 4274))))), 0) - 8 and not Mask(8, -(('mask_shl', 256, 0, -3, ('sha3', ('data', ('param', 'arg1'), ('stor', ('name', 'searchSeed', 4274))))), 0) + 256, 2) << (('mask_shl', 256, 0, -3, ('sha3', ('data', ('param', 'arg1'), ('stor', ('name', 'searchSeed', 4274))))), 0) - 8
    require not catOwners[('map', ('param', 'arg1'), ('stor', ('name', 'stor10B2', 4274))) << 224]
    require rescueIndex < 25600
    stor7[uint16(stor6.field_32) / 6] = uint32(sha3(arg1, searchSeed)) * 256^(5 * rescueIndex % 6) or !(test266151307() * 256^(5 * rescueIndex % 6)) and stor7[uint16(stor6.field_32) / 6]
    rescueIndex = uint16(rescueIndex + 1)
    catOwners[('map', ('param', 'arg1'), ('stor', ('name', 'stor10B2', 4274))) << 224] = msg.sender
    balanceOf[address(msg.sender)]++
    remainingCats = uint16(remainingCats - 1)
    emit CatRescued(msg.sender, uint32(sha3(arg1, searchSeed)) << 216);
    return (uint32(sha3(arg1, searchSeed)) << 216)
}

function acceptAdoptionOffer(bytes5 arg1) payable {
    require stor10B3[Mask(40, 216, arg1)].field_0
    if stor10B3[Mask(40, 216, arg1)].field_512:
        require stor10B3[Mask(40, 216, arg1)].field_512 == msg.sender
    require msg.value >= stor10B3[Mask(40, 216, arg1)].field_256
    if msg.value > stor10B3[Mask(40, 216, arg1)].field_256:
        pendingWithdrawals[address(msg.sender)] = pendingWithdrawals[address(msg.sender)] + msg.value - stor10B3[Mask(40, 216, arg1)].field_256
    catOwners[Mask(40, 216, arg1)] = msg.sender
    balanceOf[stor10B6[Mask(40, 216, arg1)]]--
    balanceOf[address(msg.sender)]++
    stor10B3[Mask(40, 216, arg1)].field_0 = 0
    stor10B3[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B3[Mask(40, 216, arg1)].field_48 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_512 = 0
    stor10B3[Mask(40, 216, arg1)].field_768 = 0
    if stor10B4[Mask(40, 216, arg1)].field_48 == msg.sender:
        pendingWithdrawals[address(msg.sender)] += stor10B4[Mask(40, 216, arg1)].field_256
        stor10B4[Mask(40, 216, arg1)].field_0 = 0
        stor10B4[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
        stor10B4[Mask(40, 216, arg1)].field_48 = 0
        stor10B4[Mask(40, 216, arg1)].field_256 = 0
        stor10B4[Mask(40, 216, arg1)].field_256 = 0
    pendingWithdrawals[stor10B6[Mask(40, 216, arg1)]] += stor10B3[Mask(40, 216, arg1)].field_256
    emit Transfer(1, catOwners[Mask(40, 216, arg1)], msg.sender);
    emit CatAdopted(stor10B3[Mask(40, 216, arg1)].field_256, Mask(40, 216, arg1), catOwners[Mask(40, 216, arg1)], msg.sender);
}

function acceptAdoptionRequest(bytes5 arg1) {
    require catOwners[Mask(40, 216, arg1)] == msg.sender
    require stor10B4[Mask(40, 216, arg1)].field_0
    stor10B4[Mask(40, 216, arg1)].field_0 = 0
    stor10B4[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B4[Mask(40, 216, arg1)].field_48 = 0
    stor10B4[Mask(40, 216, arg1)].field_256 = 0
    stor10B4[Mask(40, 216, arg1)].field_256 = 0
    catOwners[Mask(40, 216, arg1)] = stor10B4[Mask(40, 216, arg1)].field_48
    balanceOf[address(msg.sender)]--
    balanceOf[stor10B4[Mask(40, 216, arg1)].field_0]++
    stor10B3[Mask(40, 216, arg1)].field_0 = 0
    stor10B3[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
    stor10B3[Mask(40, 216, arg1)].field_48 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_256 = 0
    stor10B3[Mask(40, 216, arg1)].field_512 = 0
    stor10B3[Mask(40, 216, arg1)].field_768 = 0
    if stor10B4[Mask(40, 216, arg1)].field_48 == stor10B4[Mask(40, 216, arg1)].field_48:
        pendingWithdrawals[stor10B4[Mask(40, 216, arg1)].field_0] += stor10B4[Mask(40, 216, arg1)].field_256
        stor10B4[Mask(40, 216, arg1)].field_0 = 0
        stor10B4[Mask(40, 216, arg1)].field_8 = Mask(40, 216, arg1) >> 216
        stor10B4[Mask(40, 216, arg1)].field_48 = 0
        stor10B4[Mask(40, 216, arg1)].field_256 = 0
        stor10B4[Mask(40, 216, arg1)].field_256 = 0
    pendingWithdrawals[address(msg.sender)] += stor10B4[Mask(40, 216, arg1)].field_256
    emit Transfer(1, msg.sender, stor10B4[Mask(40, 216, arg1)].field_48);
    emit CatAdopted(stor10B4[Mask(40, 216, arg1)].field_256, Mask(40, 216, arg1), msg.sender, stor10B4[Mask(40, 216, arg1)].field_48);
}

function addGenesisCatGroup() {
    mem[64] = 608
    mem[96 len 512] = code.data[18656 len 512]
    require msg.sender == stor0
    require mode <= 3
    if mode == 3:
        require remainingGenesisCats > 0
        s = 0
        s = 0
        idx = 0
        while uint8(idx) < 16:
            mem[(32 * uint8(idx)) + 96] = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            require rescueIndex < 25600
            stor7[uint16(stor6.field_32) / 6] = uint16(-remainingGenesisCats + 256) << 24 or 1095216663719 * 256^(5 * rescueIndex % 6) or !(test266151307() * 256^(5 * rescueIndex % 6)) and stor7[uint16(stor6.field_32) / 6]
            rescueIndex = uint16(rescueIndex + 1)
            mem[0] = 0
            mem[32] = 4279
            balanceOf[0]++
            remainingGenesisCats = uint16(remainingGenesisCats - 1)
            _22 = mem[64]
            mem[64] = mem[64] + 160
            mem[_22] = 1
            mem[_22 + 32] = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            mem[_22 + 64] = stor0
            mem[_22 + 96] = uint64(3 * 10^17 * uint16(-stor6.field_20 % 4096 + 17))
            mem[_22 + 128] = 0
            mem[0] = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            mem[32] = 4275
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0 = 1
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0 = uint16(-remainingGenesisCats + 256) << 32 or 280375465912064 or Mask(208, 48, stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0) or stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_48 = stor0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_256 = uint64(3 * 10^17 * uint16(-stor6.field_20 % 4096 + 17))
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_320 = 0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_512 = 0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_768 = 0
            s = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            s = -remainingGenesisCats + 256
            idx = idx + 1
            continue 
    else:
        require mode <= 3
        require mode == 2
        require remainingGenesisCats > 0
        s = 0
        s = 0
        idx = 0
        while uint8(idx) < 16:
            mem[(32 * uint8(idx)) + 96] = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            require rescueIndex < 25600
            stor7[uint16(stor6.field_32) / 6] = uint16(-remainingGenesisCats + 256) << 24 or 1095216663719 * 256^(5 * rescueIndex % 6) or !(test266151307() * 256^(5 * rescueIndex % 6)) and stor7[uint16(stor6.field_32) / 6]
            rescueIndex = uint16(rescueIndex + 1)
            mem[0] = 0
            mem[32] = 4279
            balanceOf[0]++
            remainingGenesisCats = uint16(remainingGenesisCats - 1)
            _31 = mem[64]
            mem[64] = mem[64] + 160
            mem[_31] = 1
            mem[_31 + 32] = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            mem[_31 + 64] = stor0
            mem[_31 + 96] = uint64(3 * 10^17 * uint16(-stor6.field_20 % 4096 + 17))
            mem[_31 + 128] = 0
            mem[0] = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            mem[32] = 4275
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0 = 1
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0 = uint16(-remainingGenesisCats + 256) << 32 or 280375465912064 or Mask(208, 48, stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0) or stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_48 = stor0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_256 = uint64(3 * 10^17 * uint16(-stor6.field_20 % 4096 + 17))
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_320 = 0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_512 = 0
            stor10B3[-uint16(stor6.field_16) + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000].field_768 = 0
            s = -remainingGenesisCats + 256 << 240 or 0xff00000ca7000000000000000000000000000000000000000000000000000000
            s = -remainingGenesisCats + 256
            idx = idx + 1
            continue 
    mem[mem[64] len 512] = mem[96 len 512]
    emit GenesisCatsAdded(mem[mem[64] len 512]);
}



}
