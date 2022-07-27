contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 listingPrice;
uint256 sub_8b41e1bd;
mapping of struct stor6;

function getListingPrice() {
    return listingPrice
}

function sub_8b41e1bd(?) {
    return sub_8b41e1bd
}

function _fallback() payable {
    revert
}

function sub_1f12a833(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not Authorized to Change Sale Fee'
    sub_8b41e1bd = arg1
}

function changeListingPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not Authorized to Change Listing Fee'
    listingPrice = arg1
}

function sub_1cd64d79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not Authorized to Change Listing Feee Collector'
    stor3 = address(arg1)
}

function createMarketItem(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg3 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    if listingPrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to listing price'
    stor1++
    stor6[stor1].field_0 = stor1
    stor6[stor1].field_256 = arg1
    stor6[stor1].field_512 = arg2
    stor6[stor1].field_768 = arg4
    stor6[stor1].field_1024 = msg.sender
    stor6[stor1].field_1280 = 0
    stor6[stor1].field_1536 = 0
    stor6[stor1].field_1536 = arg3
    stor6[stor1].field_1792 = 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit MarketItemCreated(msg.sender, 0, arg3, 0, stor1, arg1, arg2);
    stor0 = 1
}

function createMarketSale(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor6[arg2].field_1536 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor6[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[arg2].field_1280 = msg.sender
    stor6[arg2].field_1792 = 1
    if stor6[arg2].field_768 / 100 and msg.value > -1 / stor6[arg2].field_768 / 100:
        revert with 'NH{q', 17
    call arg3 with:
       value stor6[arg2].field_768 / 100 * msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2++
    if msg.value and sub_8b41e1bd > -1 / msg.value:
        revert with 'NH{q', 17
    call stor3 with:
       value msg.value * sub_8b41e1bd / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < stor6[arg2].field_768 / 100 * msg.value:
        revert with 'NH{q', 17
    if msg.value - (stor6[arg2].field_768 / 100 * msg.value) < msg.value * sub_8b41e1bd / 100:
        revert with 'NH{q', 17
    call stor6[arg2].field_1024 with:
       value msg.value - (stor6[arg2].field_768 / 100 * msg.value) - (msg.value * sub_8b41e1bd / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function fetchMarketItems() {
    if stor1 < stor2:
        revert with 'NH{q', 17
    if stor1 - stor2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor1 - stor2
    mem[64] = (32 * stor1 - stor2) + 128
    if not stor1 - stor2:
        idx = 0
        s = 0
        while idx < stor1:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 6
            if stor6[idx + 1].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _49 = mem[64]
            mem[64] = mem[64] + 256
            mem[_49] = stor6[stor6[idx + 1].field_0].field_0
            mem[_49 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_49 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_49 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_49 + 128] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_49 + 160] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_49 + 192] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_49 + 224] = bool(stor6[stor6[idx + 1].field_0].field_1792)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _49
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
            _73 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_73 + 44 len 20]
            mem[t + 64] = mem[_73 + 64]
            mem[t + 96] = mem[_73 + 96]
            mem[t + 128] = mem[_73 + 140 len 20]
            mem[t + 160] = mem[_73 + 172 len 20]
            mem[t + 192] = mem[_73 + 192]
            mem[t + 224] = bool(mem[_73 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _38 + (256 * _39) + -mem[64] + 64
    mem[64] = (32 * stor1 - stor2) + 384
    mem[(32 * stor1 - stor2) + 128] = 0
    mem[(32 * stor1 - stor2) + 160] = 0
    mem[(32 * stor1 - stor2) + 192] = 0
    mem[(32 * stor1 - stor2) + 224] = 0
    mem[(32 * stor1 - stor2) + 256] = 0
    mem[(32 * stor1 - stor2) + 288] = 0
    mem[(32 * stor1 - stor2) + 320] = 0
    mem[(32 * stor1 - stor2) + 352] = 0
    mem[var22001] = (32 * stor1 - stor2) + 128
    s = var22001
    idx = var22002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * stor1 - stor2) + 128] = 0
        mem[(32 * stor1 - stor2) + 160] = 0
        mem[(32 * stor1 - stor2) + 192] = 0
        mem[(32 * stor1 - stor2) + 224] = 0
        mem[(32 * stor1 - stor2) + 256] = 0
        mem[(32 * stor1 - stor2) + 288] = 0
        mem[(32 * stor1 - stor2) + 320] = 0
        mem[(32 * stor1 - stor2) + 352] = 0
        mem[s + 32] = (32 * stor1 - stor2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _108 = mem[64]
        mem[64] = mem[64] + 256
        mem[_108] = stor6[stor6[idx + 1].field_0].field_0
        mem[_108 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_108 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_108 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_108 + 128] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_108 + 160] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_108 + 192] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_108 + 224] = bool(stor6[stor6[idx + 1].field_0].field_1792)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _108
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _100 = mem[64]
    mem[mem[64]] = 32
    _101 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _101:
        _117 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_117 + 44 len 20]
        mem[t + 64] = mem[_117 + 64]
        mem[t + 96] = mem[_117 + 96]
        mem[t + 128] = mem[_117 + 140 len 20]
        mem[t + 160] = mem[_117 + 172 len 20]
        mem[t + 192] = mem[_117 + 192]
        mem[t + 224] = bool(mem[_117 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _100 + (256 * _101) + -mem[64] + 64
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1280 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor1:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 6
            if stor6[idx + 1].field_1280 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _69 = mem[64]
            mem[64] = mem[64] + 256
            mem[_69] = stor6[stor6[idx + 1].field_0].field_0
            mem[_69 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_69 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_69 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_69 + 128] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_69 + 160] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_69 + 192] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_69 + 224] = bool(stor6[stor6[idx + 1].field_0].field_1792)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _69
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _58 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _59:
            _93 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_93 + 44 len 20]
            mem[t + 64] = mem[_93 + 64]
            mem[t + 96] = mem[_93 + 96]
            mem[t + 128] = mem[_93 + 140 len 20]
            mem[t + 160] = mem[_93 + 172 len 20]
            mem[t + 192] = mem[_93 + 192]
            mem[t + 224] = bool(mem[_93 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _58 + (256 * _59) + -mem[64] + 64
    mem[64] = (32 * s) + 384
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1280 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _128 = mem[64]
        mem[64] = mem[64] + 256
        mem[_128] = stor6[stor6[idx + 1].field_0].field_0
        mem[_128 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_128 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_128 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_128 + 128] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_128 + 160] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_128 + 192] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_128 + 224] = bool(stor6[stor6[idx + 1].field_0].field_1792)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _128
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _120 = mem[64]
    mem[mem[64]] = 32
    _121 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _121:
        _137 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_137 + 44 len 20]
        mem[t + 64] = mem[_137 + 64]
        mem[t + 96] = mem[_137 + 96]
        mem[t + 128] = mem[_137 + 140 len 20]
        mem[t + 160] = mem[_137 + 172 len 20]
        mem[t + 192] = mem[_137 + 192]
        mem[t + 224] = bool(mem[_137 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _120 + (256 * _121) + -mem[64] + 64
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor1:
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 1
            mem[32] = 6
            if stor6[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _69 = mem[64]
            mem[64] = mem[64] + 256
            mem[_69] = stor6[stor6[idx + 1].field_0].field_0
            mem[_69 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_69 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_69 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_69 + 128] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_69 + 160] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_69 + 192] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_69 + 224] = bool(stor6[stor6[idx + 1].field_0].field_1792)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _69
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _58 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _59:
            _93 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_93 + 44 len 20]
            mem[t + 64] = mem[_93 + 64]
            mem[t + 96] = mem[_93 + 96]
            mem[t + 128] = mem[_93 + 140 len 20]
            mem[t + 160] = mem[_93 + 172 len 20]
            mem[t + 192] = mem[_93 + 192]
            mem[t + 224] = bool(mem[_93 + 224])
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _58 + (256 * _59) + -mem[64] + 64
    mem[64] = (32 * s) + 384
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _128 = mem[64]
        mem[64] = mem[64] + 256
        mem[_128] = stor6[stor6[idx + 1].field_0].field_0
        mem[_128 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_128 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_128 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_128 + 128] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_128 + 160] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_128 + 192] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_128 + 224] = bool(stor6[stor6[idx + 1].field_0].field_1792)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _128
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _120 = mem[64]
    mem[mem[64]] = 32
    _121 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _121:
        _137 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_137 + 44 len 20]
        mem[t + 64] = mem[_137 + 64]
        mem[t + 96] = mem[_137 + 96]
        mem[t + 128] = mem[_137 + 140 len 20]
        mem[t + 160] = mem[_137 + 172 len 20]
        mem[t + 192] = mem[_137 + 192]
        mem[t + 224] = bool(mem[_137 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _120 + (256 * _121) + -mem[64] + 64
}



}
