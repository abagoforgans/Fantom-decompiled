contract main {




// =====================  Runtime code  =====================


#
#  - sellAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4)
#  - offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5)
#  - insert(uint256 arg1, uint256 arg2)
#  - cancel(uint256 arg1)
#  - kill(bytes32 arg1)
#  - offer(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6)
#
const getTime = uint64(block.timestamp)


address authorityAddress;
address stor1;
uint256 last_offer_id;
mapping of struct offers;
address owner;
uint8 stor5; offset 160
uint8 stor5; offset 232
uint8 stor5; offset 240
uint8 stor5; offset 248
uint16 stor5; offset 240
uint32 stor5; offset 232
uint64 close_time; offset 168
uint128 stor5; offset 160
address feesAddress;
mapping of struct _rank;
mapping of uint256 bestOffer;
mapping of uint256 _span;
mapping of uint256 minSell;
mapping of uint256 _near;
uint256 firstUnsortedOffer;

function matchingEnabled() {
    return bool(uint8(stor5.field_248))
}

function getBestOffer(address arg1, address arg2) {
    return bestOffer[address(arg1)][address(arg2)]
}

function last_offer_id() {
    return last_offer_id
}

function getOffer(uint256 arg1) {
    return offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512, offers[arg1].field_768
}

function getMinSell(address arg1) {
    return minSell[address(arg1)]
}

function getNextUnsortedOffer(uint256 arg1) {
    return _near[arg1]
}

function close_time() {
    return close_time
}

function _span(address arg1, address arg2) {
    return _span[arg1][arg2]
}

function _best(address arg1, address arg2) {
    return bestOffer[arg1][arg2]
}

function stopped() {
    return bool(uint8(stor5.field_232))
}

function getOfferCount(address arg1, address arg2) {
    return _span[address(arg1)][address(arg2)]
}

function offers(uint256 arg1) {
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           offers[arg1].field_1024
}

function getFirstUnsortedOffer() {
    return firstUnsortedOffer
}

function owner() {
    return owner
}

function getBetterOffer(uint256 arg1) {
    return _rank[arg1].field_0
}

function _dust(address arg1) {
    return minSell[arg1]
}

function getWorseOffer(uint256 arg1) {
    return _rank[arg1].field_256
}

function fees() {
    return feesAddress
}

function _near(uint256 arg1) {
    return _near[arg1]
}

function authority() {
    return authorityAddress
}

function _rank(uint256 arg1) {
    return _rank[arg1].field_0, _rank[arg1].field_256, _rank[arg1].field_512
}

function getOwner(uint256 arg1) {
    return offers[arg1].field_1024
}

function buyEnabled() {
    return bool(uint8(stor5.field_240))
}

function _fallback() payable {
    revert
}

function isActive(uint256 arg1) {
    return (offers[arg1].field_1184 > 0)
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setFees(address arg1) {
    require msg.sender == owner
    feesAddress = arg1
}

function isClosed() {
    if uint8(stor5.field_232):
        return bool(uint8(stor5.field_232))
    return (uint64(block.timestamp) > close_time)
}

function isOfferSorted(uint256 arg1) {
    if _rank[arg1].field_0:
        return not not _rank[arg1].field_0
    if _rank[arg1].field_256:
        return not not _rank[arg1].field_256
    return (bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1)
}

function del_rank(uint256 arg1) {
    if uint8(stor5.field_160):
        revert with 0, 'Reentrancy attempt'
    require offers[arg1].field_1184 <= 0
    require _rank[arg1].field_512
    require _rank[arg1].field_512 < block.number - 10
    _rank[arg1].field_0 = 0
    _rank[arg1].field_256 = 0
    _rank[arg1].field_512 = 0
    emit LogDelete(msg.sender, arg1);
    return 1
}

function bump(bytes32 arg1) {
    require offers[arg1].field_1184 > 0
    require not uint8(stor5.field_232)
    require uint64(block.timestamp) <= close_time
    emit LogBump(offers[arg1].field_256, offers[arg1].field_768, offers[arg1].field_0, offers[arg1].field_512, offers[arg1].field_1184, arg1, sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024);
}

function stop() {
    if this.address != msg.sender:
        if stor1 != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    stor5.field_232 % 16777216 = 1
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if stor1 != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function setBuyEnabled(bool arg1) {
    if this.address != msg.sender:
        if stor1 != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    uint16(stor5.field_240) = uint16(arg1)
    emit LogBuyEnabled(bool(uint8(stor5.field_240)));
    return 1
}

function setMatchingEnabled(bool arg1) {
    if this.address != msg.sender:
        if stor1 != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    uint8(stor5.field_248) = uint8(arg1)
    emit LogMatchingEnabled(bool(uint8(stor5.field_248)));
    return 1
}

function setMinSell(address arg1, uint256 arg2) {
    if this.address != msg.sender:
        if stor1 != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    minSell[address(arg1)] = arg2
    emit LogMinSell(address(arg1), arg2);
    return 1
}

function getPayAmount(address arg1, address arg2, uint256 arg3) {
    s = bestOffer[address(arg2)][address(arg1)]
    t = 0
    idx = arg3
    while idx > offers[stor7[address(arg2)][address(arg1)]].field_0:
        require t + offers[s].field_512 >= t
        require idx - offers[s].field_0 <= idx
        if idx - offers[s].field_0 <= 0:
            mem[0] = s
            mem[32] = 3
            s = s
            t = t + offers[s].field_512
            idx = idx - offers[s].field_0
            continue 
        require _rank[s].field_256
        mem[0] = _rank[s].field_256
        mem[32] = 3
        s = _rank[s].field_256
        t = t + offers[s].field_512
        idx = idx - offers[s].field_0
        continue 
    require 1000000000 * 10^18 * offers[s].field_512 / 1000000000 * 10^18 == offers[s].field_512
    require (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 >= 1000000000 * 10^18 * offers[s].field_512
    require offers[s].field_0
    if not (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0:
        require t >= t
        return t
    require (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0
    require 10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0 / (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0 == 10^9 * idx
    require (10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0) + 500000000 * 10^18 >= 10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0
    require t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9) >= t
    return (t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_512) + offers[s].field_1 / offers[s].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9))
}

function getBuyAmount(address arg1, address arg2, uint256 arg3) {
    s = bestOffer[address(arg1)][address(arg2)]
    t = 0
    idx = arg3
    while idx > offers[stor7[address(arg1)][address(arg2)]].field_512:
        require t + offers[s].field_0 >= t
        require idx - offers[s].field_512 <= idx
        if idx - offers[s].field_512 <= 0:
            mem[0] = s
            mem[32] = 3
            s = s
            t = t + offers[s].field_0
            idx = idx - offers[s].field_512
            continue 
        require _rank[s].field_256
        mem[0] = _rank[s].field_256
        mem[32] = 3
        s = _rank[s].field_256
        t = t + offers[s].field_0
        idx = idx - offers[s].field_512
        continue 
    require 1000000000 * 10^18 * offers[s].field_0 / 1000000000 * 10^18 == offers[s].field_0
    require (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 >= 1000000000 * 10^18 * offers[s].field_0
    require offers[s].field_512
    if not (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512:
        require t >= t
        return t
    require (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512
    require 10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512 / (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512 == 10^9 * idx
    require (10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512) + 500000000 * 10^18 >= 10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512
    require t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9) >= t
    return (t + ((10^9 * idx * (1000000000 * 10^18 * offers[s].field_0) + offers[s].field_513 / offers[s].field_512) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9))
}

function offer(uint256 arg1, address arg2, uint256 arg3, address arg4) {
    if uint8(stor5.field_160):
        revert with 0, 'Reentrancy attempt'
    if not uint8(stor5.field_248):
        require not uint8(stor5.field_232)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor5.field_160)
        Mask(96, 0, stor5.field_160) = 1
        require uint128(arg1) == arg1
        require uint128(arg3) == arg3
        require arg1 > 0
        require arg2
        require arg3 > 0
        require arg4
        require arg2 != arg4
        last_offer_id++
        offers[stor2].field_0 = arg1
        offers[stor2].field_256 = arg2
        offers[stor2].field_512 = arg3
        offers[stor2].field_768 = arg4
        offers[stor2].field_1024 = msg.sender
        offers[stor2].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate(last_offer_id);
        emit LogMake(address(arg2), address(arg4), arg1 << 128, arg3 << 128, uint64(block.timestamp), last_offer_id, sha3(arg2, arg4), msg.sender);
        Mask(96, 0, stor5.field_160) = 0
    else:
        require minSell[address(arg2)] <= arg1
        require not uint8(stor5.field_232)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor5.field_160)
        Mask(96, 0, stor5.field_160) = 1
        require uint128(arg1) == arg1
        require uint128(arg3) == arg3
        require arg1 > 0
        require arg2
        require arg3 > 0
        require arg4
        require arg2 != arg4
        last_offer_id++
        offers[stor2].field_0 = arg1
        offers[stor2].field_256 = arg2
        offers[stor2].field_512 = arg3
        offers[stor2].field_768 = arg4
        offers[stor2].field_1024 = msg.sender
        offers[stor2].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate(last_offer_id);
        emit LogMake(address(arg2), address(arg4), arg1 << 128, arg3 << 128, uint64(block.timestamp), last_offer_id, sha3(arg2, arg4), msg.sender);
        Mask(96, 0, stor5.field_160) = 0
        _near[stor2] = firstUnsortedOffer
        firstUnsortedOffer = last_offer_id
        emit LogUnsortedOffer(last_offer_id);
    return last_offer_id
}

function make(address arg1, address arg2, uint128 arg3, uint128 arg4) {
    if uint8(stor5.field_160):
        revert with 0, 'Reentrancy attempt'
    if not uint8(stor5.field_248):
        require not uint8(stor5.field_232)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor5.field_160)
        Mask(96, 0, stor5.field_160) = 1
        require arg3 == arg3
        require arg4 == arg4
        require arg3 > 0
        require arg1
        require arg4 > 0
        require arg2
        require arg1 != arg2
        last_offer_id++
        offers[stor2].field_0 = arg3
        offers[stor2].field_128 = 0
        offers[stor2].field_256 = arg1
        offers[stor2].field_512 = arg4
        offers[stor2].field_640 = 0
        offers[stor2].field_768 = arg2
        offers[stor2].field_1024 = msg.sender
        offers[stor2].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate(last_offer_id);
        emit LogMake(address(arg1), address(arg2), arg3 << 128, arg4 << 128, uint64(block.timestamp), last_offer_id, sha3(arg1, arg2), msg.sender);
        Mask(96, 0, stor5.field_160) = 0
    else:
        require minSell[address(arg1)] <= arg3
        require not uint8(stor5.field_232)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor5.field_160)
        Mask(96, 0, stor5.field_160) = 1
        require arg3 == arg3
        require arg4 == arg4
        require arg3 > 0
        require arg1
        require arg4 > 0
        require arg2
        require arg1 != arg2
        last_offer_id++
        offers[stor2].field_0 = arg3
        offers[stor2].field_128 = 0
        offers[stor2].field_256 = arg1
        offers[stor2].field_512 = arg4
        offers[stor2].field_640 = 0
        offers[stor2].field_768 = arg2
        offers[stor2].field_1024 = msg.sender
        offers[stor2].field_1184 = uint64(block.timestamp)
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit LogItemUpdate(last_offer_id);
        emit LogMake(address(arg1), address(arg2), arg3 << 128, arg4 << 128, uint64(block.timestamp), last_offer_id, sha3(arg1, arg2), msg.sender);
        Mask(96, 0, stor5.field_160) = 0
        _near[stor2] = firstUnsortedOffer
        firstUnsortedOffer = last_offer_id
        emit LogUnsortedOffer(last_offer_id);
    return last_offer_id
}

function take(bytes32 arg1, uint128 arg2) {
    require offers[arg1].field_1184 > 0
    require not uint8(stor5.field_232)
    require uint64(block.timestamp) <= close_time
    if uint8(stor5.field_160):
        revert with 0, 'Reentrancy attempt'
    if uint8(stor5.field_248):
        require uint8(stor5.field_240)
        if arg2 == offers[arg1].field_0:
            if _rank[arg1].field_0:
                require _span[stor3[arg1].field_256][stor3[arg1].field_768] > 0
                require not _rank[arg1].field_512
                if not _rank[arg1].field_0:
                    if not _rank[arg1].field_256:
                        require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                    bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                else:
                    require _rank[_rank[arg1].field_0].field_256 == arg1
                    _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                if _rank[arg1].field_256:
                    require _rank[_rank[arg1].field_256].field_0 == arg1
                    _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                _rank[arg1].field_512 = block.number
            else:
                if _rank[arg1].field_256:
                    require _span[stor3[arg1].field_256][stor3[arg1].field_768] > 0
                    require not _rank[arg1].field_512
                    if not _rank[arg1].field_0:
                        if not _rank[arg1].field_256:
                            require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                    if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                        bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                    else:
                        require _rank[_rank[arg1].field_0].field_256 == arg1
                        _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                    if _rank[arg1].field_256:
                        require _rank[_rank[arg1].field_256].field_0 == arg1
                        _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                    _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                    _rank[arg1].field_512 = block.number
                else:
                    if bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1:
                        require _span[stor3[arg1].field_256][stor3[arg1].field_768] > 0
                        require not _rank[arg1].field_512
                        if not _rank[arg1].field_0:
                            if not _rank[arg1].field_256:
                                require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                        if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                            bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                        else:
                            require _rank[_rank[arg1].field_0].field_256 == arg1
                            _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                        if _rank[arg1].field_256:
                            require _rank[_rank[arg1].field_256].field_0 == arg1
                            _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                        _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                        _rank[arg1].field_512 = block.number
    require offers[arg1].field_1184 > 0
    require not uint8(stor5.field_232)
    require uint64(block.timestamp) <= close_time
    require not uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 1
    if not offers[arg1].field_512:
        require offers[arg1].field_0
        require uint128(0 / offers[arg1].field_0) == 0 / offers[arg1].field_0
        require arg2 == arg2
        if not arg2:
            Mask(96, 0, stor5.field_160) = 0
            revert
        if not 0 / offers[arg1].field_0:
            Mask(96, 0, stor5.field_160) = 0
            revert
        if arg2 > offers[arg1].field_0:
            Mask(96, 0, stor5.field_160) = 0
            revert
        if 0 / offers[arg1].field_0 > offers[arg1].field_512:
            Mask(96, 0, stor5.field_160) = 0
            revert
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= 0 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        if not feesAddress:
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2 << 128, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
        else:
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feesAddress, 0 / offers[arg1].field_0 / 2000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args feesAddress, arg2 / 2000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000) <= 0 / offers[arg1].field_0
            require arg2 - (arg2 / 2000) <= arg2
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 - (arg2 / 2000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 - (arg2 / 2000) << 128, (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2 - (arg2 / 2000), (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000), offers[arg1].field_256, offers[arg1].field_768);
    else:
        require offers[arg1].field_512
        require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
        require offers[arg1].field_0
        require uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0) == arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require arg2 == arg2
        if not arg2:
            Mask(96, 0, stor5.field_160) = 0
            revert
        if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
            Mask(96, 0, stor5.field_160) = 0
            revert
        if arg2 > offers[arg1].field_0:
            Mask(96, 0, stor5.field_160) = 0
            revert
        if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
            Mask(96, 0, stor5.field_160) = 0
            revert
        require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
        offers[arg1].field_0 -= arg2
        require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
        offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
        require ext_code.size(offers[arg1].field_768)
        if not feesAddress:
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
        else:
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feesAddress, arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args feesAddress, arg2 / 2000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000) <= arg2 * offers[arg1].field_512 / offers[arg1].field_0
            require arg2 - (arg2 / 2000) <= arg2
            require ext_code.size(offers[arg1].field_768)
            call offers[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, offers[arg1].field_1024, (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(offers[arg1].field_256)
            call offers[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 - (arg2 / 2000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit LogItemUpdate(arg1);
            emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 - (arg2 / 2000) << 128, (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
            emit LogTrade(arg2 - (arg2 / 2000), (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000), offers[arg1].field_256, offers[arg1].field_768);
    if not offers[arg1].field_0:
        offers[arg1].field_0 = 0
        offers[arg1].field_256 = 0
        offers[arg1].field_512 = 0
        offers[arg1].field_768 = 0
        offers[arg1].field_1024 = 0
        offers[arg1].field_1184 = 0
    Mask(96, 0, stor5.field_160) = 0
}

function buy(uint256 arg1, uint256 arg2) {
    require offers[arg1].field_1184 > 0
    require not uint8(stor5.field_232)
    require uint64(block.timestamp) <= close_time
    if uint8(stor5.field_160):
        revert with 0, 'Reentrancy attempt'
    if not uint8(stor5.field_248):
        require offers[arg1].field_1184 > 0
        require not uint8(stor5.field_232)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor5.field_160)
        Mask(96, 0, stor5.field_160) = 1
        if not offers[arg1].field_512:
            require offers[arg1].field_0
            require uint128(0 / offers[arg1].field_0) == 0 / offers[arg1].field_0
            require uint128(arg2) == arg2
            if not arg2:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            if not 0 / offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            if arg2 > offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            if 0 / offers[arg1].field_0 > offers[arg1].field_512:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= 0 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            if not feesAddress:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            else:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, feesAddress, 0 / offers[arg1].field_0 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddress, arg2 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000) <= 0 / offers[arg1].field_0
                require arg2 - (arg2 / 2000) <= arg2
                require ext_code.size(offers[arg1].field_768)
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2 - (arg2 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 - (arg2 / 2000) << 128, (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2 - (arg2 / 2000), (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000), offers[arg1].field_256, offers[arg1].field_768);
        else:
            require offers[arg1].field_512
            require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
            require offers[arg1].field_0
            require uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0) == arg2 * offers[arg1].field_512 / offers[arg1].field_0
            require uint128(arg2) == arg2
            if not arg2:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            if arg2 > offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
                Mask(96, 0, stor5.field_160) = 0
                return 0
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            if not feesAddress:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            else:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, feesAddress, arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddress, arg2 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000) <= arg2 * offers[arg1].field_512 / offers[arg1].field_0
                require arg2 - (arg2 / 2000) <= arg2
                require ext_code.size(offers[arg1].field_768)
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2 - (arg2 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 - (arg2 / 2000) << 128, (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2 - (arg2 / 2000), (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000), offers[arg1].field_256, offers[arg1].field_768);
    else:
        require uint8(stor5.field_240)
        if arg2 == offers[arg1].field_0:
            if _rank[arg1].field_0:
                require _span[stor3[arg1].field_256][stor3[arg1].field_768] > 0
                require not _rank[arg1].field_512
                if not _rank[arg1].field_0:
                    if not _rank[arg1].field_256:
                        require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                    bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                else:
                    require _rank[_rank[arg1].field_0].field_256 == arg1
                    _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                if _rank[arg1].field_256:
                    require _rank[_rank[arg1].field_256].field_0 == arg1
                    _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                _rank[arg1].field_512 = block.number
            else:
                if _rank[arg1].field_256:
                    require _span[stor3[arg1].field_256][stor3[arg1].field_768] > 0
                    require not _rank[arg1].field_512
                    if not _rank[arg1].field_0:
                        if not _rank[arg1].field_256:
                            require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                    if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                        bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                    else:
                        require _rank[_rank[arg1].field_0].field_256 == arg1
                        _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                    if _rank[arg1].field_256:
                        require _rank[_rank[arg1].field_256].field_0 == arg1
                        _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                    _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                    _rank[arg1].field_512 = block.number
                else:
                    if bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1:
                        require _span[stor3[arg1].field_256][stor3[arg1].field_768] > 0
                        require not _rank[arg1].field_512
                        if not _rank[arg1].field_0:
                            if not _rank[arg1].field_256:
                                require bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] == arg1
                        if arg1 == bestOffer[stor3[arg1].field_256][stor3[arg1].field_768]:
                            bestOffer[stor3[arg1].field_256][stor3[arg1].field_768] = _rank[arg1].field_256
                        else:
                            require _rank[_rank[arg1].field_0].field_256 == arg1
                            _rank[_rank[arg1].field_0].field_256 = _rank[arg1].field_256
                        if _rank[arg1].field_256:
                            require _rank[_rank[arg1].field_256].field_0 == arg1
                            _rank[_rank[arg1].field_256].field_0 = _rank[arg1].field_0
                        _span[stor3[arg1].field_256][stor3[arg1].field_768]--
                        _rank[arg1].field_512 = block.number
        require offers[arg1].field_1184 > 0
        require not uint8(stor5.field_232)
        require uint64(block.timestamp) <= close_time
        require not uint8(stor5.field_160)
        Mask(96, 0, stor5.field_160) = 1
        if not offers[arg1].field_512:
            require offers[arg1].field_0
            require uint128(0 / offers[arg1].field_0) == 0 / offers[arg1].field_0
            require uint128(arg2) == arg2
            if not arg2:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if not 0 / offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if arg2 > offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if 0 / offers[arg1].field_0 > offers[arg1].field_512:
                Mask(96, 0, stor5.field_160) = 0
                revert
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (0 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= 0 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            if not feesAddress:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, 0 / offers[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, 0 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2, 0 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            else:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, feesAddress, 0 / offers[arg1].field_0 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddress, arg2 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000) <= 0 / offers[arg1].field_0
                require arg2 - (arg2 / 2000) <= arg2
                require ext_code.size(offers[arg1].field_768)
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2 - (arg2 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 - (arg2 / 2000) << 128, (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2 - (arg2 / 2000), (0 / offers[arg1].field_0) - (0 / offers[arg1].field_0 / 2000), offers[arg1].field_256, offers[arg1].field_768);
        else:
            require offers[arg1].field_512
            require arg2 * offers[arg1].field_512 / offers[arg1].field_512 == arg2
            require offers[arg1].field_0
            require uint128(arg2 * offers[arg1].field_512 / offers[arg1].field_0) == arg2 * offers[arg1].field_512 / offers[arg1].field_0
            require uint128(arg2) == arg2
            if not arg2:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if not arg2 * offers[arg1].field_512 / offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if arg2 > offers[arg1].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if arg2 * offers[arg1].field_512 / offers[arg1].field_0 > offers[arg1].field_512:
                Mask(96, 0, stor5.field_160) = 0
                revert
            require offers[arg1].field_0 - arg2 <= offers[arg1].field_0
            offers[arg1].field_0 -= arg2
            require offers[arg1].field_512 - (arg2 * offers[arg1].field_512 / offers[arg1].field_0) <= offers[arg1].field_512
            offers[arg1].field_512 -= arg2 * offers[arg1].field_512 / offers[arg1].field_0
            require ext_code.size(offers[arg1].field_768)
            if not feesAddress:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, arg2 * offers[arg1].field_512 / offers[arg1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 << 128, arg2 * offers[arg1].field_512 / offers[arg1].field_0 << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2, arg2 * offers[arg1].field_512 / offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_768);
            else:
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, feesAddress, arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddress, arg2 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000) <= arg2 * offers[arg1].field_512 / offers[arg1].field_0
                require arg2 - (arg2 / 2000) <= arg2
                require ext_code.size(offers[arg1].field_768)
                call offers[arg1].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[arg1].field_1024, (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[arg1].field_256)
                call offers[arg1].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2 - (arg2 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(arg1);
                emit LogTake(arg1, offers[arg1].field_256, offers[arg1].field_768, arg2 - (arg2 / 2000) << 128, (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[arg1].field_256, offers[arg1].field_768), offers[arg1].field_1024, msg.sender);
                emit LogTrade(arg2 - (arg2 / 2000), (arg2 * offers[arg1].field_512 / offers[arg1].field_0) - (arg2 * offers[arg1].field_512 / offers[arg1].field_0 / 2000), offers[arg1].field_256, offers[arg1].field_768);
    if not offers[arg1].field_0:
        offers[arg1].field_0 = 0
        offers[arg1].field_256 = 0
        offers[arg1].field_512 = 0
        offers[arg1].field_768 = 0
        offers[arg1].field_1024 = 0
        offers[arg1].field_1184 = 0
    Mask(96, 0, stor5.field_160) = 0
    return 1
}

function buyAllAmount(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    mem[64] = 96
    require not msg.value
    if uint8(stor5.field_160):
        revert with 0, 'Reentrancy attempt'
    s = 0
    s = 0
    idx = arg2
    while idx > 0:
        require bestOffer[address(arg1)][address(arg3)]
        require 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_0 / 10^18 == offers[stor7[address(arg1)][address(arg3)]].field_0
        require (10^18 * offers[stor7[address(arg1)][address(arg3)]].field_0) + offers[stor7[address(arg1)][address(arg3)]].field_513 >= 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_0
        require offers[stor7[address(arg1)][address(arg3)]].field_512
        if 10^18 * idx < (10^18 * offers[stor7[address(arg1)][address(arg3)]].field_0) + offers[stor7[address(arg1)][address(arg3)]].field_513 / offers[stor7[address(arg1)][address(arg3)]].field_512:
            require s <= arg4
            return s
        if idx >= offers[stor7[address(arg1)][address(arg3)]].field_0:
            require s + offers[stor7[address(arg1)][address(arg3)]].field_512 >= s
            require idx - offers[stor7[address(arg1)][address(arg3)]].field_0 <= idx
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
            require not uint8(stor5.field_232)
            require uint64(block.timestamp) <= close_time
            if uint8(stor5.field_160):
                revert with 0, 'Reentrancy attempt'
            if not uint8(stor5.field_248):
                _19100 = mem[64]
                mem[64] = mem[64] + 192
                mem[_19100] = 0
                mem[_19100 + 32] = 0
                mem[_19100 + 64] = 0
                mem[_19100 + 96] = 0
                mem[_19100 + 128] = 0
                mem[_19100 + 160] = 0
                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                require not uint8(stor5.field_232)
                require uint64(block.timestamp) <= close_time
                require not uint8(stor5.field_160)
                Mask(96, 0, stor5.field_160) = 1
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                _19132 = mem[64]
                mem[64] = mem[64] + 192
                mem[_19132] = offers[stor7[address(arg1)][address(arg3)]].field_0
                mem[_19132 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                mem[_19132 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                mem[_19132 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                mem[_19132 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                mem[_19132 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
            else:
                require uint8(stor5.field_240)
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                if offers[stor7[address(arg1)][address(arg3)]].field_0 != offers[stor7[address(arg1)][address(arg3)]].field_0:
                    _19104 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_19104] = 0
                    mem[_19104 + 32] = 0
                    mem[_19104 + 64] = 0
                    mem[_19104 + 96] = 0
                    mem[_19104 + 128] = 0
                    mem[_19104 + 160] = 0
                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                    require not uint8(stor5.field_232)
                    require uint64(block.timestamp) <= close_time
                    require not uint8(stor5.field_160)
                    Mask(96, 0, stor5.field_160) = 1
                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                    mem[32] = 3
                    _19148 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_19148] = offers[stor7[address(arg1)][address(arg3)]].field_0
                    mem[_19148 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                    mem[_19148 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                    mem[_19148 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[_19148 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                    mem[_19148 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                else:
                    if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                        require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                        require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                        if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _19378 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19378] = 0
                                    mem[_19378 + 32] = 0
                                    mem[_19378 + 64] = 0
                                    mem[_19378 + 96] = 0
                                    mem[_19378 + 128] = 0
                                    mem[_19378 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _19634 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19634] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_19634 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_19634 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_19634 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_19634 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_19634 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _19469 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19469] = 0
                                    mem[_19469 + 32] = 0
                                    mem[_19469 + 64] = 0
                                    mem[_19469 + 96] = 0
                                    mem[_19469 + 128] = 0
                                    mem[_19469 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _19684 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19684] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_19684 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_19684 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_19684 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_19684 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_19684 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _19433 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19433] = 0
                                    mem[_19433 + 32] = 0
                                    mem[_19433 + 64] = 0
                                    mem[_19433 + 96] = 0
                                    mem[_19433 + 128] = 0
                                    mem[_19433 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _19660 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19660] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_19660 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_19660 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_19660 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_19660 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_19660 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _19492 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19492] = 0
                                    mem[_19492 + 32] = 0
                                    mem[_19492 + 64] = 0
                                    mem[_19492 + 96] = 0
                                    mem[_19492 + 128] = 0
                                    mem[_19492 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _19734 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_19734] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_19734 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_19734 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_19734 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_19734 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_19734 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19434 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19434] = 0
                                        mem[_19434 + 32] = 0
                                        mem[_19434 + 64] = 0
                                        mem[_19434 + 96] = 0
                                        mem[_19434 + 128] = 0
                                        mem[_19434 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19664 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19664] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19664 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19664 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19664 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19664 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19664 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19494 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19494] = 0
                                        mem[_19494 + 32] = 0
                                        mem[_19494 + 64] = 0
                                        mem[_19494 + 96] = 0
                                        mem[_19494 + 128] = 0
                                        mem[_19494 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19738 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19738] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19738 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19738 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19738 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19738 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19738 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19470 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19470] = 0
                                        mem[_19470 + 32] = 0
                                        mem[_19470 + 64] = 0
                                        mem[_19470 + 96] = 0
                                        mem[_19470 + 128] = 0
                                        mem[_19470 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19688 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19688] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19688 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19688 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19688 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19688 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19688 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19514 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19514] = 0
                                        mem[_19514 + 32] = 0
                                        mem[_19514 + 64] = 0
                                        mem[_19514 + 96] = 0
                                        mem[_19514 + 128] = 0
                                        mem[_19514 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19789 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19789] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19789 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19789 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19789 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19789 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19789 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19471 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19471] = 0
                                        mem[_19471 + 32] = 0
                                        mem[_19471 + 64] = 0
                                        mem[_19471 + 96] = 0
                                        mem[_19471 + 128] = 0
                                        mem[_19471 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19692 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19692] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19692 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19692 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19692 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19692 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19692 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19516 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19516] = 0
                                        mem[_19516 + 32] = 0
                                        mem[_19516 + 64] = 0
                                        mem[_19516 + 96] = 0
                                        mem[_19516 + 128] = 0
                                        mem[_19516 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19793 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19793] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19793 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19793 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19793 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19793 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19793 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19495 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19495] = 0
                                        mem[_19495 + 32] = 0
                                        mem[_19495 + 64] = 0
                                        mem[_19495 + 96] = 0
                                        mem[_19495 + 128] = 0
                                        mem[_19495 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19742 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19742] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19742 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19742 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19742 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19742 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19742 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19533 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19533] = 0
                                        mem[_19533 + 32] = 0
                                        mem[_19533 + 64] = 0
                                        mem[_19533 + 96] = 0
                                        mem[_19533 + 128] = 0
                                        mem[_19533 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19861 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19861] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19861 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19861 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19861 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19861 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19861 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                    else:
                        if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                            require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                            require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                            if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19438 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19438] = 0
                                        mem[_19438 + 32] = 0
                                        mem[_19438 + 64] = 0
                                        mem[_19438 + 96] = 0
                                        mem[_19438 + 128] = 0
                                        mem[_19438 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19668 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19668] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19668 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19668 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19668 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19668 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19668 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19497 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19497] = 0
                                        mem[_19497 + 32] = 0
                                        mem[_19497 + 64] = 0
                                        mem[_19497 + 96] = 0
                                        mem[_19497 + 128] = 0
                                        mem[_19497 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19746 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19746] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19746 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19746 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19746 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19746 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19746 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19472 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19472] = 0
                                        mem[_19472 + 32] = 0
                                        mem[_19472 + 64] = 0
                                        mem[_19472 + 96] = 0
                                        mem[_19472 + 128] = 0
                                        mem[_19472 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19696 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19696] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19696 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19696 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19696 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19696 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19696 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _19518 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19518] = 0
                                        mem[_19518 + 32] = 0
                                        mem[_19518 + 64] = 0
                                        mem[_19518 + 96] = 0
                                        mem[_19518 + 128] = 0
                                        mem[_19518 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _19797 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_19797] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_19797 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_19797 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_19797 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_19797 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_19797 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19473 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19473] = 0
                                            mem[_19473 + 32] = 0
                                            mem[_19473 + 64] = 0
                                            mem[_19473 + 96] = 0
                                            mem[_19473 + 128] = 0
                                            mem[_19473 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19700 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19700] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19700 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19700 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19700 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19700 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19700 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19520 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19520] = 0
                                            mem[_19520 + 32] = 0
                                            mem[_19520 + 64] = 0
                                            mem[_19520 + 96] = 0
                                            mem[_19520 + 128] = 0
                                            mem[_19520 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19801 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19801] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19801 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19801 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19801 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19801 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19801 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19498 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19498] = 0
                                            mem[_19498 + 32] = 0
                                            mem[_19498 + 64] = 0
                                            mem[_19498 + 96] = 0
                                            mem[_19498 + 128] = 0
                                            mem[_19498 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19750 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19750] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19750 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19750 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19750 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19750 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19750 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19536 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19536] = 0
                                            mem[_19536 + 32] = 0
                                            mem[_19536 + 64] = 0
                                            mem[_19536 + 96] = 0
                                            mem[_19536 + 128] = 0
                                            mem[_19536 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19865 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19865] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19865 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19865 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19865 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19865 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19865 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19499 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19499] = 0
                                            mem[_19499 + 32] = 0
                                            mem[_19499 + 64] = 0
                                            mem[_19499 + 96] = 0
                                            mem[_19499 + 128] = 0
                                            mem[_19499 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19754 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19754] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19754 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19754 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19754 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19754 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19754 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19538 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19538] = 0
                                            mem[_19538 + 32] = 0
                                            mem[_19538 + 64] = 0
                                            mem[_19538 + 96] = 0
                                            mem[_19538 + 128] = 0
                                            mem[_19538 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19869 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19869] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19869 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19869 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19869 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19869 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19869 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19521 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19521] = 0
                                            mem[_19521 + 32] = 0
                                            mem[_19521 + 64] = 0
                                            mem[_19521 + 96] = 0
                                            mem[_19521 + 128] = 0
                                            mem[_19521 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19805 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19805] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19805 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19805 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19805 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19805 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19805 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19554 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19554] = 0
                                            mem[_19554 + 32] = 0
                                            mem[_19554 + 64] = 0
                                            mem[_19554 + 96] = 0
                                            mem[_19554 + 128] = 0
                                            mem[_19554 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19939 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19939] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19939 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19939 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19939 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19939 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19939 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            mem[0] = offers[stor7[address(arg1)][address(arg3)]].field_768
                            mem[32] = sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, 7)
                            if bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] != bestOffer[address(arg1)][address(arg3)]:
                                _19127 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_19127] = 0
                                mem[_19127 + 32] = 0
                                mem[_19127 + 64] = 0
                                mem[_19127 + 96] = 0
                                mem[_19127 + 128] = 0
                                mem[_19127 + 160] = 0
                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor5.field_232)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor5.field_160)
                                Mask(96, 0, stor5.field_160) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _19406 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_19406] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                mem[_19406 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                mem[_19406 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                mem[_19406 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                mem[_19406 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                mem[_19406 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                                require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                                if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19477 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19477] = 0
                                            mem[_19477 + 32] = 0
                                            mem[_19477 + 64] = 0
                                            mem[_19477 + 96] = 0
                                            mem[_19477 + 128] = 0
                                            mem[_19477 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19706 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19706] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19706 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19706 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19706 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19706 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19706 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19523 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19523] = 0
                                            mem[_19523 + 32] = 0
                                            mem[_19523 + 64] = 0
                                            mem[_19523 + 96] = 0
                                            mem[_19523 + 128] = 0
                                            mem[_19523 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19810 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19810] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19810 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19810 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19810 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19810 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19810 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19500 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19500] = 0
                                            mem[_19500 + 32] = 0
                                            mem[_19500 + 64] = 0
                                            mem[_19500 + 96] = 0
                                            mem[_19500 + 128] = 0
                                            mem[_19500 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19758 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19758] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19758 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19758 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19758 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19758 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19758 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _19540 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19540] = 0
                                            mem[_19540 + 32] = 0
                                            mem[_19540 + 64] = 0
                                            mem[_19540 + 96] = 0
                                            mem[_19540 + 128] = 0
                                            mem[_19540 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _19875 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_19875] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_19875 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_19875 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_19875 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_19875 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_19875 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19501 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19501] = 0
                                                mem[_19501 + 32] = 0
                                                mem[_19501 + 64] = 0
                                                mem[_19501 + 96] = 0
                                                mem[_19501 + 128] = 0
                                                mem[_19501 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _19762 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19762] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_19762 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_19762 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_19762 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_19762 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_19762 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19542 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19542] = 0
                                                mem[_19542 + 32] = 0
                                                mem[_19542 + 64] = 0
                                                mem[_19542 + 96] = 0
                                                mem[_19542 + 128] = 0
                                                mem[_19542 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _19879 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19879] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_19879 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_19879 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_19879 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_19879 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_19879 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19524 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19524] = 0
                                                mem[_19524 + 32] = 0
                                                mem[_19524 + 64] = 0
                                                mem[_19524 + 96] = 0
                                                mem[_19524 + 128] = 0
                                                mem[_19524 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _19814 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19814] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_19814 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_19814 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_19814 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_19814 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_19814 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19557 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19557] = 0
                                                mem[_19557 + 32] = 0
                                                mem[_19557 + 64] = 0
                                                mem[_19557 + 96] = 0
                                                mem[_19557 + 128] = 0
                                                mem[_19557 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _19943 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19943] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_19943 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_19943 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_19943 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_19943 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_19943 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19525 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19525] = 0
                                                mem[_19525 + 32] = 0
                                                mem[_19525 + 64] = 0
                                                mem[_19525 + 96] = 0
                                                mem[_19525 + 128] = 0
                                                mem[_19525 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _19818 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19818] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_19818 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_19818 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_19818 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_19818 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_19818 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19559 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19559] = 0
                                                mem[_19559 + 32] = 0
                                                mem[_19559 + 64] = 0
                                                mem[_19559 + 96] = 0
                                                mem[_19559 + 128] = 0
                                                mem[_19559 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _19947 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19947] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_19947 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_19947 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_19947 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_19947 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_19947 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19543 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19543] = 0
                                                mem[_19543 + 32] = 0
                                                mem[_19543 + 64] = 0
                                                mem[_19543 + 96] = 0
                                                mem[_19543 + 128] = 0
                                                mem[_19543 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _19883 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19883] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_19883 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_19883 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_19883 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_19883 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_19883 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _19575 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_19575] = 0
                                                mem[_19575 + 32] = 0
                                                mem[_19575 + 64] = 0
                                                mem[_19575 + 96] = 0
                                                mem[_19575 + 128] = 0
                                                mem[_19575 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _20041 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20041] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_20041 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_20041 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_20041 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_20041 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_20041 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
            if not offers[stor7[address(arg1)][address(arg3)]].field_512:
                require offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(0 / offers[stor7[address(arg1)][address(arg3)]].field_0) == 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require offers[stor7[address(arg1)][address(arg3)]].field_0 == offers[stor7[address(arg1)][address(arg3)]].field_0
                if not offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if not 0 / offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_512:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                require offers[stor7[address(arg1)][address(arg3)]].field_0 - offers[stor7[address(arg1)][address(arg3)]].field_0 <= offers[stor7[address(arg1)][address(arg3)]].field_0
                offers[stor7[address(arg1)][address(arg3)]].field_0 -= offers[stor7[address(arg1)][address(arg3)]].field_0
                require offers[stor7[address(arg1)][address(arg3)]].field_512 - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) <= offers[stor7[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor7[address(arg1)][address(arg3)]].field_512 -= 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                if not feesAddress:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = offers[stor7[address(arg1)][address(arg3)]].field_0
                    mem[mem[64] + 128] = uint128(0 / offers[stor7[address(arg1)][address(arg3)]].field_0)
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, offers[stor7[address(arg1)][address(arg3)]].field_0, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = offers[stor7[address(arg1)][address(arg3)]].field_0
                    mem[mem[64] + 32] = 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    emit LogTrade(offers[stor7[address(arg1)][address(arg3)]].field_0, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
                else:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, feesAddress, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args feesAddress, offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    require offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= offers[stor7[address(arg1)][address(arg3)]].field_0
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = uint128(offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                    mem[mem[64] + 128] = uint128((0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    mem[mem[64] + 32] = (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    emit LogTrade(offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
            else:
                require offers[stor7[address(arg1)][address(arg3)]].field_512
                require offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_512 == offers[stor7[address(arg1)][address(arg3)]].field_0
                require offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) == offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require offers[stor7[address(arg1)][address(arg3)]].field_0 == offers[stor7[address(arg1)][address(arg3)]].field_0
                if not offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if not offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_512:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                require offers[stor7[address(arg1)][address(arg3)]].field_0 - offers[stor7[address(arg1)][address(arg3)]].field_0 <= offers[stor7[address(arg1)][address(arg3)]].field_0
                offers[stor7[address(arg1)][address(arg3)]].field_0 -= offers[stor7[address(arg1)][address(arg3)]].field_0
                require offers[stor7[address(arg1)][address(arg3)]].field_512 - (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) <= offers[stor7[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor7[address(arg1)][address(arg3)]].field_512 -= offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                if not feesAddress:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = offers[stor7[address(arg1)][address(arg3)]].field_0
                    mem[mem[64] + 128] = uint128(offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0)
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = offers[stor7[address(arg1)][address(arg3)]].field_0
                    mem[mem[64] + 32] = offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    emit LogTrade(offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
                else:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, feesAddress, offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args feesAddress, offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    require offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= offers[stor7[address(arg1)][address(arg3)]].field_0
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = uint128(offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                    mem[mem[64] + 128] = uint128((offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    mem[mem[64] + 32] = (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    emit LogTrade(offers[stor7[address(arg1)][address(arg3)]].field_0 - (offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (offers[stor7[address(arg1)][address(arg3)]].field_0 * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            if not offers[stor7[address(arg1)][address(arg3)]].field_0:
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor7[address(arg1)][address(arg3)]].field_0 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_256 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_512 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_768 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_1024 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_1184 = 0
            Mask(96, 0, stor5.field_160) = 0
            s = bestOffer[address(arg1)][address(arg3)]
            s = s + offers[stor7[address(arg1)][address(arg3)]].field_512
            idx = idx - offers[stor7[address(arg1)][address(arg3)]].field_0
            continue 
        require 1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512 / 1000000000 * 10^18 == offers[stor7[address(arg1)][address(arg3)]].field_512
        require (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 >= 1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512
        require offers[stor7[address(arg1)][address(arg3)]].field_0
        if not (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0:
            require s >= s
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
            require not uint8(stor5.field_232)
            require uint64(block.timestamp) <= close_time
            if uint8(stor5.field_160):
                revert with 0, 'Reentrancy attempt'
            if not uint8(stor5.field_248):
                _19321 = mem[64]
                mem[64] = mem[64] + 192
                mem[_19321] = 0
                mem[_19321 + 32] = 0
                mem[_19321 + 64] = 0
                mem[_19321 + 96] = 0
                mem[_19321 + 128] = 0
                mem[_19321 + 160] = 0
                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                require not uint8(stor5.field_232)
                require uint64(block.timestamp) <= close_time
                require not uint8(stor5.field_160)
                Mask(96, 0, stor5.field_160) = 1
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                _19616 = mem[64]
                mem[64] = mem[64] + 192
                mem[_19616] = offers[stor7[address(arg1)][address(arg3)]].field_0
                mem[_19616 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                mem[_19616 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                mem[_19616 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                mem[_19616 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                mem[_19616 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
            else:
                require uint8(stor5.field_240)
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                if uint128(idx) != offers[stor7[address(arg1)][address(arg3)]].field_0:
                    _19487 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_19487] = 0
                    mem[_19487 + 32] = 0
                    mem[_19487 + 64] = 0
                    mem[_19487 + 96] = 0
                    mem[_19487 + 128] = 0
                    mem[_19487 + 160] = 0
                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                    require not uint8(stor5.field_232)
                    require uint64(block.timestamp) <= close_time
                    require not uint8(stor5.field_160)
                    Mask(96, 0, stor5.field_160) = 1
                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                    mem[32] = 3
                    _19718 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_19718] = offers[stor7[address(arg1)][address(arg3)]].field_0
                    mem[_19718 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                    mem[_19718 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                    mem[_19718 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[_19718 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                    mem[_19718 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                else:
                    if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                        require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                        require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                        if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20268 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20268] = 0
                                    mem[_20268 + 32] = 0
                                    mem[_20268 + 64] = 0
                                    mem[_20268 + 96] = 0
                                    mem[_20268 + 128] = 0
                                    mem[_20268 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21192 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21192] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21192 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21192 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21192 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21192 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21192 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20501 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20501] = 0
                                    mem[_20501 + 32] = 0
                                    mem[_20501 + 64] = 0
                                    mem[_20501 + 96] = 0
                                    mem[_20501 + 128] = 0
                                    mem[_20501 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21372 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21372] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21372 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21372 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21372 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21372 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21372 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20396 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20396] = 0
                                    mem[_20396 + 32] = 0
                                    mem[_20396 + 64] = 0
                                    mem[_20396 + 96] = 0
                                    mem[_20396 + 128] = 0
                                    mem[_20396 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21266 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21266] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21266 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21266 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21266 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21266 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21266 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20599 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20599] = 0
                                    mem[_20599 + 32] = 0
                                    mem[_20599 + 64] = 0
                                    mem[_20599 + 96] = 0
                                    mem[_20599 + 128] = 0
                                    mem[_20599 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21511 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21511] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21511 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21511 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21511 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21511 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21511 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20397 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20397] = 0
                                        mem[_20397 + 32] = 0
                                        mem[_20397 + 64] = 0
                                        mem[_20397 + 96] = 0
                                        mem[_20397 + 128] = 0
                                        mem[_20397 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21270 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21270] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21270 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21270 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21270 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21270 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21270 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20601 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20601] = 0
                                        mem[_20601 + 32] = 0
                                        mem[_20601 + 64] = 0
                                        mem[_20601 + 96] = 0
                                        mem[_20601 + 128] = 0
                                        mem[_20601 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21515 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21515] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21515 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21515 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21515 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21515 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21515 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20502 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20502] = 0
                                        mem[_20502 + 32] = 0
                                        mem[_20502 + 64] = 0
                                        mem[_20502 + 96] = 0
                                        mem[_20502 + 128] = 0
                                        mem[_20502 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21376 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21376] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21376 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21376 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21376 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21376 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21376 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20674 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20674] = 0
                                        mem[_20674 + 32] = 0
                                        mem[_20674 + 64] = 0
                                        mem[_20674 + 96] = 0
                                        mem[_20674 + 128] = 0
                                        mem[_20674 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21699 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21699] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21699 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21699 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21699 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21699 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21699 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20503 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20503] = 0
                                        mem[_20503 + 32] = 0
                                        mem[_20503 + 64] = 0
                                        mem[_20503 + 96] = 0
                                        mem[_20503 + 128] = 0
                                        mem[_20503 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21380 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21380] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21380 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21380 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21380 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21380 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21380 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20676 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20676] = 0
                                        mem[_20676 + 32] = 0
                                        mem[_20676 + 64] = 0
                                        mem[_20676 + 96] = 0
                                        mem[_20676 + 128] = 0
                                        mem[_20676 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21703 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21703] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21703 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21703 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21703 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21703 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21703 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20602 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20602] = 0
                                        mem[_20602 + 32] = 0
                                        mem[_20602 + 64] = 0
                                        mem[_20602 + 96] = 0
                                        mem[_20602 + 128] = 0
                                        mem[_20602 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21519 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21519] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21519 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21519 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21519 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21519 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21519 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20734 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20734] = 0
                                        mem[_20734 + 32] = 0
                                        mem[_20734 + 64] = 0
                                        mem[_20734 + 96] = 0
                                        mem[_20734 + 128] = 0
                                        mem[_20734 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21918 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21918] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21918 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21918 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21918 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21918 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21918 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                    else:
                        if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                            require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                            require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                            if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20401 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20401] = 0
                                        mem[_20401 + 32] = 0
                                        mem[_20401 + 64] = 0
                                        mem[_20401 + 96] = 0
                                        mem[_20401 + 128] = 0
                                        mem[_20401 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21274 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21274] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21274 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21274 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21274 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21274 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21274 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20604 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20604] = 0
                                        mem[_20604 + 32] = 0
                                        mem[_20604 + 64] = 0
                                        mem[_20604 + 96] = 0
                                        mem[_20604 + 128] = 0
                                        mem[_20604 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21523 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21523] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21523 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21523 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21523 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21523 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21523 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20504 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20504] = 0
                                        mem[_20504 + 32] = 0
                                        mem[_20504 + 64] = 0
                                        mem[_20504 + 96] = 0
                                        mem[_20504 + 128] = 0
                                        mem[_20504 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21384 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21384] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21384 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21384 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21384 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21384 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21384 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20678 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20678] = 0
                                        mem[_20678 + 32] = 0
                                        mem[_20678 + 64] = 0
                                        mem[_20678 + 96] = 0
                                        mem[_20678 + 128] = 0
                                        mem[_20678 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21707 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21707] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21707 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21707 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21707 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21707 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21707 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20505 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20505] = 0
                                            mem[_20505 + 32] = 0
                                            mem[_20505 + 64] = 0
                                            mem[_20505 + 96] = 0
                                            mem[_20505 + 128] = 0
                                            mem[_20505 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21388 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21388] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21388 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21388 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21388 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21388 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21388 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20680 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20680] = 0
                                            mem[_20680 + 32] = 0
                                            mem[_20680 + 64] = 0
                                            mem[_20680 + 96] = 0
                                            mem[_20680 + 128] = 0
                                            mem[_20680 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21711 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21711] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21711 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21711 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21711 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21711 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21711 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20605 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20605] = 0
                                            mem[_20605 + 32] = 0
                                            mem[_20605 + 64] = 0
                                            mem[_20605 + 96] = 0
                                            mem[_20605 + 128] = 0
                                            mem[_20605 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21527 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21527] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21527 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21527 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21527 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21527 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21527 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20737 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20737] = 0
                                            mem[_20737 + 32] = 0
                                            mem[_20737 + 64] = 0
                                            mem[_20737 + 96] = 0
                                            mem[_20737 + 128] = 0
                                            mem[_20737 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21922 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21922] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21922 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21922 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21922 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21922 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21922 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20606 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20606] = 0
                                            mem[_20606 + 32] = 0
                                            mem[_20606 + 64] = 0
                                            mem[_20606 + 96] = 0
                                            mem[_20606 + 128] = 0
                                            mem[_20606 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21531 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21531] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21531 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21531 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21531 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21531 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21531 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20739 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20739] = 0
                                            mem[_20739 + 32] = 0
                                            mem[_20739 + 64] = 0
                                            mem[_20739 + 96] = 0
                                            mem[_20739 + 128] = 0
                                            mem[_20739 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21926 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21926] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21926 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21926 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21926 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21926 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21926 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20681 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20681] = 0
                                            mem[_20681 + 32] = 0
                                            mem[_20681 + 64] = 0
                                            mem[_20681 + 96] = 0
                                            mem[_20681 + 128] = 0
                                            mem[_20681 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21715 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21715] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21715 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21715 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21715 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21715 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21715 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20808 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20808] = 0
                                            mem[_20808 + 32] = 0
                                            mem[_20808 + 64] = 0
                                            mem[_20808 + 96] = 0
                                            mem[_20808 + 128] = 0
                                            mem[_20808 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22160 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22160] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22160 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22160 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22160 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22160 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22160 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            mem[0] = offers[stor7[address(arg1)][address(arg3)]].field_768
                            mem[32] = sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, 7)
                            if bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] != bestOffer[address(arg1)][address(arg3)]:
                                _19599 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_19599] = 0
                                mem[_19599 + 32] = 0
                                mem[_19599 + 64] = 0
                                mem[_19599 + 96] = 0
                                mem[_19599 + 128] = 0
                                mem[_19599 + 160] = 0
                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor5.field_232)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor5.field_160)
                                Mask(96, 0, stor5.field_160) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _20296 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_20296] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                mem[_20296 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                mem[_20296 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                mem[_20296 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                mem[_20296 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                mem[_20296 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                                require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                                if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20509 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20509] = 0
                                            mem[_20509 + 32] = 0
                                            mem[_20509 + 64] = 0
                                            mem[_20509 + 96] = 0
                                            mem[_20509 + 128] = 0
                                            mem[_20509 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21394 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21394] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21394 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21394 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21394 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21394 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21394 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20683 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20683] = 0
                                            mem[_20683 + 32] = 0
                                            mem[_20683 + 64] = 0
                                            mem[_20683 + 96] = 0
                                            mem[_20683 + 128] = 0
                                            mem[_20683 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21720 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21720] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21720 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21720 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21720 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21720 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21720 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20607 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20607] = 0
                                            mem[_20607 + 32] = 0
                                            mem[_20607 + 64] = 0
                                            mem[_20607 + 96] = 0
                                            mem[_20607 + 128] = 0
                                            mem[_20607 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21535 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21535] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21535 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21535 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21535 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21535 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21535 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20741 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20741] = 0
                                            mem[_20741 + 32] = 0
                                            mem[_20741 + 64] = 0
                                            mem[_20741 + 96] = 0
                                            mem[_20741 + 128] = 0
                                            mem[_20741 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21932 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21932] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21932 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21932 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21932 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21932 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21932 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20608 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20608] = 0
                                                mem[_20608 + 32] = 0
                                                mem[_20608 + 64] = 0
                                                mem[_20608 + 96] = 0
                                                mem[_20608 + 128] = 0
                                                mem[_20608 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _21539 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_21539] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_21539 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_21539 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_21539 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_21539 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_21539 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20743 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20743] = 0
                                                mem[_20743 + 32] = 0
                                                mem[_20743 + 64] = 0
                                                mem[_20743 + 96] = 0
                                                mem[_20743 + 128] = 0
                                                mem[_20743 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _21936 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_21936] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_21936 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_21936 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_21936 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_21936 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_21936 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20684 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20684] = 0
                                                mem[_20684 + 32] = 0
                                                mem[_20684 + 64] = 0
                                                mem[_20684 + 96] = 0
                                                mem[_20684 + 128] = 0
                                                mem[_20684 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _21724 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_21724] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_21724 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_21724 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_21724 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_21724 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_21724 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20811 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20811] = 0
                                                mem[_20811 + 32] = 0
                                                mem[_20811 + 64] = 0
                                                mem[_20811 + 96] = 0
                                                mem[_20811 + 128] = 0
                                                mem[_20811 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _22164 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_22164] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_22164 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_22164 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_22164 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_22164 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_22164 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20685 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20685] = 0
                                                mem[_20685 + 32] = 0
                                                mem[_20685 + 64] = 0
                                                mem[_20685 + 96] = 0
                                                mem[_20685 + 128] = 0
                                                mem[_20685 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _21728 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_21728] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_21728 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_21728 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_21728 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_21728 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_21728 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20813 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20813] = 0
                                                mem[_20813 + 32] = 0
                                                mem[_20813 + 64] = 0
                                                mem[_20813 + 96] = 0
                                                mem[_20813 + 128] = 0
                                                mem[_20813 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _22168 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_22168] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_22168 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_22168 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_22168 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_22168 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_22168 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20744 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20744] = 0
                                                mem[_20744 + 32] = 0
                                                mem[_20744 + 64] = 0
                                                mem[_20744 + 96] = 0
                                                mem[_20744 + 128] = 0
                                                mem[_20744 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _21940 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_21940] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_21940 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_21940 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_21940 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_21940 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_21940 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                            else:
                                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 6
                                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                                _20872 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_20872] = 0
                                                mem[_20872 + 32] = 0
                                                mem[_20872 + 64] = 0
                                                mem[_20872 + 96] = 0
                                                mem[_20872 + 128] = 0
                                                mem[_20872 + 160] = 0
                                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                                require not uint8(stor5.field_232)
                                                require uint64(block.timestamp) <= close_time
                                                require not uint8(stor5.field_160)
                                                Mask(96, 0, stor5.field_160) = 1
                                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                                mem[32] = 3
                                                _22419 = mem[64]
                                                mem[64] = mem[64] + 192
                                                mem[_22419] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                                mem[_22419 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                                mem[_22419 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                                mem[_22419 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                                mem[_22419 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                                mem[_22419 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
            if not offers[stor7[address(arg1)][address(arg3)]].field_512:
                require offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(0 / offers[stor7[address(arg1)][address(arg3)]].field_0) == 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(idx) == uint128(idx)
                if not uint128(idx):
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if not 0 / offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if uint128(idx) > offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_512:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                require offers[stor7[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor7[address(arg1)][address(arg3)]].field_0
                offers[stor7[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
                require offers[stor7[address(arg1)][address(arg3)]].field_512 - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) <= offers[stor7[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor7[address(arg1)][address(arg3)]].field_512 -= 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                if not feesAddress:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = uint128(idx)
                    mem[mem[64] + 128] = uint128(0 / offers[stor7[address(arg1)][address(arg3)]].field_0)
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, idx << 128, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = uint128(idx)
                    mem[mem[64] + 32] = 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    emit LogTrade(idx << 128, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
                else:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, feesAddress, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args feesAddress, uint128(idx) / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    require uint128(idx) - (uint128(idx) / 2000) <= uint128(idx)
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128(idx) - (uint128(idx) / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = uint128(uint128(idx) - (uint128(idx) / 2000))
                    mem[mem[64] + 128] = uint128((0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, uint128(idx) - (uint128(idx) / 2000) << 128, (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = uint128(idx) - (uint128(idx) / 2000)
                    mem[mem[64] + 32] = (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    emit LogTrade(uint128(idx) - (uint128(idx) / 2000), (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
            else:
                require offers[stor7[address(arg1)][address(arg3)]].field_512
                require uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_512 == uint128(idx)
                require offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) == uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(idx) == uint128(idx)
                if not uint128(idx):
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if not uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if uint128(idx) > offers[stor7[address(arg1)][address(arg3)]].field_0:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                if uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_512:
                    Mask(96, 0, stor5.field_160) = 0
                    revert
                require offers[stor7[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor7[address(arg1)][address(arg3)]].field_0
                offers[stor7[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
                require offers[stor7[address(arg1)][address(arg3)]].field_512 - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) <= offers[stor7[address(arg1)][address(arg3)]].field_512
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor7[address(arg1)][address(arg3)]].field_512 -= uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                if not feesAddress:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128(idx)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = uint128(idx)
                    mem[mem[64] + 128] = uint128(uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0)
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, idx << 128, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = uint128(idx)
                    mem[mem[64] + 32] = uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    emit LogTrade(idx << 128, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
                else:
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, feesAddress, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args feesAddress, uint128(idx) / 2000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                    require uint128(idx) - (uint128(idx) / 2000) <= uint128(idx)
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                    call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                    call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, uint128(idx) - (uint128(idx) / 2000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                    mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                    mem[mem[64] + 96] = uint128(uint128(idx) - (uint128(idx) / 2000))
                    mem[mem[64] + 128] = uint128((uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                    mem[mem[64] + 160] = uint64(block.timestamp)
                    emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, uint128(idx) - (uint128(idx) / 2000) << 128, (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                    mem[mem[64]] = uint128(idx) - (uint128(idx) / 2000)
                    mem[mem[64] + 32] = (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                    emit LogTrade(uint128(idx) - (uint128(idx) / 2000), (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            if not offers[stor7[address(arg1)][address(arg3)]].field_0:
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                offers[stor7[address(arg1)][address(arg3)]].field_0 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_256 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_512 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_768 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_1024 = 0
                offers[stor7[address(arg1)][address(arg3)]].field_1184 = 0
            Mask(96, 0, stor5.field_160) = 0
            s = bestOffer[address(arg1)][address(arg3)]
            s = s
            idx = 0
            continue 
        require (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0
        require 10^9 * idx * (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0 / (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0 == 10^9 * idx
        require (10^9 * idx * (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0) + 500000000 * 10^18 >= 10^9 * idx * (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0
        require s + ((10^9 * idx * (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9) >= s
        mem[0] = bestOffer[address(arg1)][address(arg3)]
        mem[32] = 3
        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
        require not uint8(stor5.field_232)
        require uint64(block.timestamp) <= close_time
        if uint8(stor5.field_160):
            revert with 0, 'Reentrancy attempt'
        if not uint8(stor5.field_248):
            _19432 = mem[64]
            mem[64] = mem[64] + 192
            mem[_19432] = 0
            mem[_19432 + 32] = 0
            mem[_19432 + 64] = 0
            mem[_19432 + 96] = 0
            mem[_19432 + 128] = 0
            mem[_19432 + 160] = 0
            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
            require not uint8(stor5.field_232)
            require uint64(block.timestamp) <= close_time
            require not uint8(stor5.field_160)
            Mask(96, 0, stor5.field_160) = 1
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            _19655 = mem[64]
            mem[64] = mem[64] + 192
            mem[_19655] = offers[stor7[address(arg1)][address(arg3)]].field_0
            mem[_19655 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
            mem[_19655 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
            mem[_19655 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
            mem[_19655 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
            mem[_19655 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
        else:
            require uint8(stor5.field_240)
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            if uint128(idx) != offers[stor7[address(arg1)][address(arg3)]].field_0:
                _19527 = mem[64]
                mem[64] = mem[64] + 192
                mem[_19527] = 0
                mem[_19527 + 32] = 0
                mem[_19527 + 64] = 0
                mem[_19527 + 96] = 0
                mem[_19527 + 128] = 0
                mem[_19527 + 160] = 0
                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                require not uint8(stor5.field_232)
                require uint64(block.timestamp) <= close_time
                require not uint8(stor5.field_160)
                Mask(96, 0, stor5.field_160) = 1
                mem[0] = bestOffer[address(arg1)][address(arg3)]
                mem[32] = 3
                _19850 = mem[64]
                mem[64] = mem[64] + 192
                mem[_19850] = offers[stor7[address(arg1)][address(arg3)]].field_0
                mem[_19850 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                mem[_19850 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                mem[_19850 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                mem[_19850 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                mem[_19850 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
            else:
                if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                    require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                    require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                    if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                        if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                            bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 6
                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                _20519 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_20519] = 0
                                mem[_20519 + 32] = 0
                                mem[_20519 + 64] = 0
                                mem[_20519 + 96] = 0
                                mem[_20519 + 128] = 0
                                mem[_20519 + 160] = 0
                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor5.field_232)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor5.field_160)
                                Mask(96, 0, stor5.field_160) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _21408 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_21408] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                mem[_21408 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                mem[_21408 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                mem[_21408 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                mem[_21408 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                mem[_21408 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 6
                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                _20687 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_20687] = 0
                                mem[_20687 + 32] = 0
                                mem[_20687 + 64] = 0
                                mem[_20687 + 96] = 0
                                mem[_20687 + 128] = 0
                                mem[_20687 + 160] = 0
                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor5.field_232)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor5.field_160)
                                Mask(96, 0, stor5.field_160) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _21744 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_21744] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                mem[_21744 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                mem[_21744 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                mem[_21744 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                mem[_21744 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                mem[_21744 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                            if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 6
                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                _20614 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_20614] = 0
                                mem[_20614 + 32] = 0
                                mem[_20614 + 64] = 0
                                mem[_20614 + 96] = 0
                                mem[_20614 + 128] = 0
                                mem[_20614 + 160] = 0
                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor5.field_232)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor5.field_160)
                                Mask(96, 0, stor5.field_160) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _21546 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_21546] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                mem[_21546 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                mem[_21546 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                mem[_21546 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                mem[_21546 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                mem[_21546 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 6
                                _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                _20748 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_20748] = 0
                                mem[_20748 + 32] = 0
                                mem[_20748 + 64] = 0
                                mem[_20748 + 96] = 0
                                mem[_20748 + 128] = 0
                                mem[_20748 + 160] = 0
                                require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                require not uint8(stor5.field_232)
                                require uint64(block.timestamp) <= close_time
                                require not uint8(stor5.field_160)
                                Mask(96, 0, stor5.field_160) = 1
                                mem[0] = bestOffer[address(arg1)][address(arg3)]
                                mem[32] = 3
                                _21947 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_21947] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                mem[_21947 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                mem[_21947 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                mem[_21947 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                mem[_21947 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                mem[_21947 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                    else:
                        if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20615 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20615] = 0
                                    mem[_20615 + 32] = 0
                                    mem[_20615 + 64] = 0
                                    mem[_20615 + 96] = 0
                                    mem[_20615 + 128] = 0
                                    mem[_20615 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21550 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21550] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21550 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21550 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21550 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21550 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21550 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20750 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20750] = 0
                                    mem[_20750 + 32] = 0
                                    mem[_20750 + 64] = 0
                                    mem[_20750 + 96] = 0
                                    mem[_20750 + 128] = 0
                                    mem[_20750 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21951 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21951] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21951 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21951 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21951 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21951 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21951 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20688 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20688] = 0
                                    mem[_20688 + 32] = 0
                                    mem[_20688 + 64] = 0
                                    mem[_20688 + 96] = 0
                                    mem[_20688 + 128] = 0
                                    mem[_20688 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21748 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21748] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21748 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21748 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21748 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21748 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21748 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20818 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20818] = 0
                                    mem[_20818 + 32] = 0
                                    mem[_20818 + 64] = 0
                                    mem[_20818 + 96] = 0
                                    mem[_20818 + 128] = 0
                                    mem[_20818 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _22202 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_22202] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_22202 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_22202 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_22202 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_22202 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_22202 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20689 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20689] = 0
                                    mem[_20689 + 32] = 0
                                    mem[_20689 + 64] = 0
                                    mem[_20689 + 96] = 0
                                    mem[_20689 + 128] = 0
                                    mem[_20689 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21752 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21752] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21752 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21752 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21752 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21752 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21752 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20820 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20820] = 0
                                    mem[_20820 + 32] = 0
                                    mem[_20820 + 64] = 0
                                    mem[_20820 + 96] = 0
                                    mem[_20820 + 128] = 0
                                    mem[_20820 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _22206 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_22206] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_22206 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_22206 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_22206 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_22206 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_22206 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20751 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20751] = 0
                                    mem[_20751 + 32] = 0
                                    mem[_20751 + 64] = 0
                                    mem[_20751 + 96] = 0
                                    mem[_20751 + 128] = 0
                                    mem[_20751 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21955 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21955] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21955 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21955 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21955 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21955 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21955 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20878 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20878] = 0
                                    mem[_20878 + 32] = 0
                                    mem[_20878 + 64] = 0
                                    mem[_20878 + 96] = 0
                                    mem[_20878 + 128] = 0
                                    mem[_20878 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _22427 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_22427] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_22427 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_22427 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_22427 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_22427 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_22427 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                else:
                    if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                        require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                        require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                        if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                            if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20619 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20619] = 0
                                    mem[_20619 + 32] = 0
                                    mem[_20619 + 64] = 0
                                    mem[_20619 + 96] = 0
                                    mem[_20619 + 128] = 0
                                    mem[_20619 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21554 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21554] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21554 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21554 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21554 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21554 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21554 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20753 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20753] = 0
                                    mem[_20753 + 32] = 0
                                    mem[_20753 + 64] = 0
                                    mem[_20753 + 96] = 0
                                    mem[_20753 + 128] = 0
                                    mem[_20753 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21959 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21959] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21959 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21959 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21959 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21959 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21959 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20690 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20690] = 0
                                    mem[_20690 + 32] = 0
                                    mem[_20690 + 64] = 0
                                    mem[_20690 + 96] = 0
                                    mem[_20690 + 128] = 0
                                    mem[_20690 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _21756 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_21756] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_21756 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_21756 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_21756 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_21756 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_21756 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                    _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 6
                                    _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                    _20822 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_20822] = 0
                                    mem[_20822 + 32] = 0
                                    mem[_20822 + 64] = 0
                                    mem[_20822 + 96] = 0
                                    mem[_20822 + 128] = 0
                                    mem[_20822 + 160] = 0
                                    require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                    require not uint8(stor5.field_232)
                                    require uint64(block.timestamp) <= close_time
                                    require not uint8(stor5.field_160)
                                    Mask(96, 0, stor5.field_160) = 1
                                    mem[0] = bestOffer[address(arg1)][address(arg3)]
                                    mem[32] = 3
                                    _22210 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_22210] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                    mem[_22210 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                    mem[_22210 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                    mem[_22210 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                    mem[_22210 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                    mem[_22210 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20691 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20691] = 0
                                        mem[_20691 + 32] = 0
                                        mem[_20691 + 64] = 0
                                        mem[_20691 + 96] = 0
                                        mem[_20691 + 128] = 0
                                        mem[_20691 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21760 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21760] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21760 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21760 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21760 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21760 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21760 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20824 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20824] = 0
                                        mem[_20824 + 32] = 0
                                        mem[_20824 + 64] = 0
                                        mem[_20824 + 96] = 0
                                        mem[_20824 + 128] = 0
                                        mem[_20824 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _22214 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_22214] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_22214 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_22214 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_22214 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_22214 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_22214 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20754 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20754] = 0
                                        mem[_20754 + 32] = 0
                                        mem[_20754 + 64] = 0
                                        mem[_20754 + 96] = 0
                                        mem[_20754 + 128] = 0
                                        mem[_20754 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21963 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21963] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21963 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21963 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21963 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21963 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21963 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20881 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20881] = 0
                                        mem[_20881 + 32] = 0
                                        mem[_20881 + 64] = 0
                                        mem[_20881 + 96] = 0
                                        mem[_20881 + 128] = 0
                                        mem[_20881 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _22431 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_22431] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_22431 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_22431 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_22431 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_22431 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_22431 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20755 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20755] = 0
                                        mem[_20755 + 32] = 0
                                        mem[_20755 + 64] = 0
                                        mem[_20755 + 96] = 0
                                        mem[_20755 + 128] = 0
                                        mem[_20755 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21967 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21967] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21967 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21967 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21967 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21967 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21967 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20883 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20883] = 0
                                        mem[_20883 + 32] = 0
                                        mem[_20883 + 64] = 0
                                        mem[_20883 + 96] = 0
                                        mem[_20883 + 128] = 0
                                        mem[_20883 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _22435 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_22435] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_22435 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_22435 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_22435 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_22435 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_22435 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20825 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20825] = 0
                                        mem[_20825 + 32] = 0
                                        mem[_20825 + 64] = 0
                                        mem[_20825 + 96] = 0
                                        mem[_20825 + 128] = 0
                                        mem[_20825 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _22218 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_22218] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_22218 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_22218 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_22218 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_22218 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_22218 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20961 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20961] = 0
                                        mem[_20961 + 32] = 0
                                        mem[_20961 + 64] = 0
                                        mem[_20961 + 96] = 0
                                        mem[_20961 + 128] = 0
                                        mem[_20961 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _22695 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_22695] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_22695 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_22695 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_22695 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_22695 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_22695 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                    else:
                        mem[0] = offers[stor7[address(arg1)][address(arg3)]].field_768
                        mem[32] = sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, 7)
                        if bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] != bestOffer[address(arg1)][address(arg3)]:
                            _19629 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_19629] = 0
                            mem[_19629 + 32] = 0
                            mem[_19629 + 64] = 0
                            mem[_19629 + 96] = 0
                            mem[_19629 + 128] = 0
                            mem[_19629 + 160] = 0
                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                            require not uint8(stor5.field_232)
                            require uint64(block.timestamp) <= close_time
                            require not uint8(stor5.field_160)
                            Mask(96, 0, stor5.field_160) = 1
                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                            mem[32] = 3
                            _20547 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_20547] = offers[stor7[address(arg1)][address(arg3)]].field_0
                            mem[_20547 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                            mem[_20547 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                            mem[_20547 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                            mem[_20547 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                            mem[_20547 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                        else:
                            require _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768] > 0
                            require not _rank[stor7[address(arg1)][address(arg3)]].field_512
                            if _rank[stor7[address(arg1)][address(arg3)]].field_0:
                                if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                    bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20695 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20695] = 0
                                        mem[_20695 + 32] = 0
                                        mem[_20695 + 64] = 0
                                        mem[_20695 + 96] = 0
                                        mem[_20695 + 128] = 0
                                        mem[_20695 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21766 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21766] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21766 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21766 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21766 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21766 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21766 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20827 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20827] = 0
                                        mem[_20827 + 32] = 0
                                        mem[_20827 + 64] = 0
                                        mem[_20827 + 96] = 0
                                        mem[_20827 + 128] = 0
                                        mem[_20827 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _22223 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_22223] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_22223 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_22223 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_22223 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_22223 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_22223 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                    _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                    if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20756 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20756] = 0
                                        mem[_20756 + 32] = 0
                                        mem[_20756 + 64] = 0
                                        mem[_20756 + 96] = 0
                                        mem[_20756 + 128] = 0
                                        mem[_20756 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _21971 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_21971] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_21971 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_21971 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_21971 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_21971 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_21971 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                        _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 6
                                        _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                        _20885 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_20885] = 0
                                        mem[_20885 + 32] = 0
                                        mem[_20885 + 64] = 0
                                        mem[_20885 + 96] = 0
                                        mem[_20885 + 128] = 0
                                        mem[_20885 + 160] = 0
                                        require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                        require not uint8(stor5.field_232)
                                        require uint64(block.timestamp) <= close_time
                                        require not uint8(stor5.field_160)
                                        Mask(96, 0, stor5.field_160) = 1
                                        mem[0] = bestOffer[address(arg1)][address(arg3)]
                                        mem[32] = 3
                                        _22441 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_22441] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                        mem[_22441 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                        mem[_22441 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                        mem[_22441 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                        mem[_22441 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                        mem[_22441 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                            else:
                                if _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20757 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20757] = 0
                                            mem[_20757 + 32] = 0
                                            mem[_20757 + 64] = 0
                                            mem[_20757 + 96] = 0
                                            mem[_20757 + 128] = 0
                                            mem[_20757 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _21975 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21975] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_21975 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_21975 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_21975 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_21975 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_21975 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20887 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20887] = 0
                                            mem[_20887 + 32] = 0
                                            mem[_20887 + 64] = 0
                                            mem[_20887 + 96] = 0
                                            mem[_20887 + 128] = 0
                                            mem[_20887 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22445 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22445] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22445 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22445 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22445 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22445 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22445 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20828 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20828] = 0
                                            mem[_20828 + 32] = 0
                                            mem[_20828 + 64] = 0
                                            mem[_20828 + 96] = 0
                                            mem[_20828 + 128] = 0
                                            mem[_20828 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22227 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22227] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22227 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22227 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22227 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22227 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22227 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20964 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20964] = 0
                                            mem[_20964 + 32] = 0
                                            mem[_20964 + 64] = 0
                                            mem[_20964 + 96] = 0
                                            mem[_20964 + 128] = 0
                                            mem[_20964 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22699 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22699] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22699 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22699 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22699 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22699 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22699 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                else:
                                    require bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] == bestOffer[address(arg1)][address(arg3)]
                                    if bestOffer[address(arg1)][address(arg3)] == bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768]:
                                        bestOffer[stor3[bestOffer[address(arg1)][address(arg3)]].field_256][stor3[bestOffer[address(arg1)][address(arg3)]].field_768] = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20829 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20829] = 0
                                            mem[_20829 + 32] = 0
                                            mem[_20829 + 64] = 0
                                            mem[_20829 + 96] = 0
                                            mem[_20829 + 128] = 0
                                            mem[_20829 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22231 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22231] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22231 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22231 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22231 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22231 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22231 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20966 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20966] = 0
                                            mem[_20966 + 32] = 0
                                            mem[_20966 + 64] = 0
                                            mem[_20966 + 96] = 0
                                            mem[_20966 + 128] = 0
                                            mem[_20966 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22703 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22703] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22703 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22703 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22703 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22703 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22703 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                    else:
                                        require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 == bestOffer[address(arg1)][address(arg3)]
                                        _rank[_rank[stor7[address(arg1)][address(arg3)]].field_0].field_256 = _rank[stor7[address(arg1)][address(arg3)]].field_256
                                        if not _rank[stor7[address(arg1)][address(arg3)]].field_256:
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _20888 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_20888] = 0
                                            mem[_20888 + 32] = 0
                                            mem[_20888 + 64] = 0
                                            mem[_20888 + 96] = 0
                                            mem[_20888 + 128] = 0
                                            mem[_20888 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22449 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22449] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22449 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22449 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22449 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22449 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22449 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
                                        else:
                                            require _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 == bestOffer[address(arg1)][address(arg3)]
                                            _rank[_rank[stor7[address(arg1)][address(arg3)]].field_256].field_0 = _rank[stor7[address(arg1)][address(arg3)]].field_0
                                            _span[stor3[stor7[address(arg1)][address(arg3)]].field_256][stor3[stor7[address(arg1)][address(arg3)]].field_768]--
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 6
                                            _rank[stor7[address(arg1)][address(arg3)]].field_512 = block.number
                                            _21018 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_21018] = 0
                                            mem[_21018 + 32] = 0
                                            mem[_21018 + 64] = 0
                                            mem[_21018 + 96] = 0
                                            mem[_21018 + 128] = 0
                                            mem[_21018 + 160] = 0
                                            require offers[stor7[address(arg1)][address(arg3)]].field_1184 > 0
                                            require not uint8(stor5.field_232)
                                            require uint64(block.timestamp) <= close_time
                                            require not uint8(stor5.field_160)
                                            Mask(96, 0, stor5.field_160) = 1
                                            mem[0] = bestOffer[address(arg1)][address(arg3)]
                                            mem[32] = 3
                                            _22966 = mem[64]
                                            mem[64] = mem[64] + 192
                                            mem[_22966] = offers[stor7[address(arg1)][address(arg3)]].field_0
                                            mem[_22966 + 32] = offers[stor7[address(arg1)][address(arg3)]].field_256
                                            mem[_22966 + 64] = offers[stor7[address(arg1)][address(arg3)]].field_512
                                            mem[_22966 + 96] = offers[stor7[address(arg1)][address(arg3)]].field_768
                                            mem[_22966 + 128] = offers[stor7[address(arg1)][address(arg3)]].field_1024
                                            mem[_22966 + 160] = offers[stor7[address(arg1)][address(arg3)]].field_1184
        if not offers[stor7[address(arg1)][address(arg3)]].field_512:
            require offers[stor7[address(arg1)][address(arg3)]].field_0
            require uint128(0 / offers[stor7[address(arg1)][address(arg3)]].field_0) == 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
            require uint128(idx) == uint128(idx)
            if not uint128(idx):
                Mask(96, 0, stor5.field_160) = 0
                revert
            if not 0 / offers[stor7[address(arg1)][address(arg3)]].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if uint128(idx) > offers[stor7[address(arg1)][address(arg3)]].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_512:
                Mask(96, 0, stor5.field_160) = 0
                revert
            require offers[stor7[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor7[address(arg1)][address(arg3)]].field_0
            offers[stor7[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
            require offers[stor7[address(arg1)][address(arg3)]].field_512 - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) <= offers[stor7[address(arg1)][address(arg3)]].field_512
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            offers[stor7[address(arg1)][address(arg3)]].field_512 -= 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
            require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
            if not feesAddress:
                call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint128(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = uint128(idx)
                mem[mem[64] + 128] = uint128(0 / offers[stor7[address(arg1)][address(arg3)]].field_0)
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, idx << 128, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = uint128(idx)
                mem[mem[64] + 32] = 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                emit LogTrade(idx << 128, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
            else:
                call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, feesAddress, 0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddress, uint128(idx) / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= 0 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(idx) - (uint128(idx) / 2000) <= uint128(idx)
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint128(idx) - (uint128(idx) / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = uint128(uint128(idx) - (uint128(idx) / 2000))
                mem[mem[64] + 128] = uint128((0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, uint128(idx) - (uint128(idx) / 2000) << 128, (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = uint128(idx) - (uint128(idx) / 2000)
                mem[mem[64] + 32] = (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                emit LogTrade(uint128(idx) - (uint128(idx) / 2000), (0 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (0 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
        else:
            require offers[stor7[address(arg1)][address(arg3)]].field_512
            require uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_512 == uint128(idx)
            require offers[stor7[address(arg1)][address(arg3)]].field_0
            require uint128(uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) == uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
            require uint128(idx) == uint128(idx)
            if not uint128(idx):
                Mask(96, 0, stor5.field_160) = 0
                revert
            if not uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if uint128(idx) > offers[stor7[address(arg1)][address(arg3)]].field_0:
                Mask(96, 0, stor5.field_160) = 0
                revert
            if uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 > offers[stor7[address(arg1)][address(arg3)]].field_512:
                Mask(96, 0, stor5.field_160) = 0
                revert
            require offers[stor7[address(arg1)][address(arg3)]].field_0 - uint128(idx) <= offers[stor7[address(arg1)][address(arg3)]].field_0
            offers[stor7[address(arg1)][address(arg3)]].field_0 -= uint128(idx)
            require offers[stor7[address(arg1)][address(arg3)]].field_512 - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) <= offers[stor7[address(arg1)][address(arg3)]].field_512
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            offers[stor7[address(arg1)][address(arg3)]].field_512 -= uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
            require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
            if not feesAddress:
                call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint128(idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = uint128(idx)
                mem[mem[64] + 128] = uint128(uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0)
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, idx << 128, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = uint128(idx)
                mem[mem[64] + 32] = uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                emit LogTrade(idx << 128, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0, offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
            else:
                call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, feesAddress, uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args feesAddress, uint128(idx) / 2000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) <= uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0
                require uint128(idx) - (uint128(idx) / 2000) <= uint128(idx)
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_768)
                call offers[stor7[address(arg1)][address(arg3)]].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, offers[stor7[address(arg1)][address(arg3)]].field_1024, (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(offers[stor7[address(arg1)][address(arg3)]].field_256)
                call offers[stor7[address(arg1)][address(arg3)]].field_256.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, uint128(idx) - (uint128(idx) / 2000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit LogItemUpdate(bestOffer[address(arg1)][address(arg3)]);
                mem[mem[64] + 64] = offers[stor7[address(arg1)][address(arg3)]].field_768
                mem[mem[64] + 96] = uint128(uint128(idx) - (uint128(idx) / 2000))
                mem[mem[64] + 128] = uint128((uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000))
                mem[mem[64] + 160] = uint64(block.timestamp)
                emit LogTake(bestOffer[address(arg1)][address(arg3)], offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768, uint128(idx) - (uint128(idx) / 2000) << 128, (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000) << 128, uint64(block.timestamp), sha3(offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768), offers[stor7[address(arg1)][address(arg3)]].field_1024, msg.sender);
                mem[mem[64]] = uint128(idx) - (uint128(idx) / 2000)
                mem[mem[64] + 32] = (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000)
                emit LogTrade(uint128(idx) - (uint128(idx) / 2000), (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0) - (uint128(idx) * offers[stor7[address(arg1)][address(arg3)]].field_512 / offers[stor7[address(arg1)][address(arg3)]].field_0 / 2000), offers[stor7[address(arg1)][address(arg3)]].field_256, offers[stor7[address(arg1)][address(arg3)]].field_768);
        mem[0] = bestOffer[address(arg1)][address(arg3)]
        mem[32] = 3
        if not offers[stor7[address(arg1)][address(arg3)]].field_0:
            mem[0] = bestOffer[address(arg1)][address(arg3)]
            mem[32] = 3
            offers[stor7[address(arg1)][address(arg3)]].field_0 = 0
            offers[stor7[address(arg1)][address(arg3)]].field_256 = 0
            offers[stor7[address(arg1)][address(arg3)]].field_512 = 0
            offers[stor7[address(arg1)][address(arg3)]].field_768 = 0
            offers[stor7[address(arg1)][address(arg3)]].field_1024 = 0
            offers[stor7[address(arg1)][address(arg3)]].field_1184 = 0
        Mask(96, 0, stor5.field_160) = 0
        s = bestOffer[address(arg1)][address(arg3)]
        s = s + ((10^9 * idx * (1000000000 * 10^18 * offers[stor7[address(arg1)][address(arg3)]].field_512) + offers[stor7[address(arg1)][address(arg3)]].field_1 / offers[stor7[address(arg1)][address(arg3)]].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^9)
        idx = 0
        continue 
    require s <= arg4
    return s
}



}
