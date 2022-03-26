contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of uint256 sub_c67e32e9;
uint256 sub_3a5b375d;
uint256 sub_1d249447;
uint256 sub_7362c8fd;
array of uint256 stor6;
address ownerAddress;
uint256 sub_f8b75fb5;
uint256 fees;
uint256 minimumBetAmount;
uint256 collectedFees;
mapping of address sub_44bb8279;
mapping of uint256 sub_d86bed9b;
uint256 stor14;
mapping of uint256 stor99;

function sub_1d249447(?) {
    return sub_1d249447
}

function sub_3a5b375d(?) {
    return sub_3a5b375d
}

function sub_44bb8279(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_44bb8279[arg1]
}

function sub_7362c8fd(?) {
    return sub_7362c8fd
}

function minimumBetAmount() {
    return minimumBetAmount
}

function ownerAddress() {
    return ownerAddress
}

function collectedFees() {
    return collectedFees
}

function fees() {
    return fees
}

function sub_c67e32e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c67e32e9[arg1]
}

function sub_d86bed9b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_d86bed9b[arg1]
}

function sub_f8b75fb5(?) {
    return sub_f8b75fb5
}

function adminAddress() {
    return address(stor6.length)
}

function _fallback() payable {
    revert
}

function sub_a91c770f(?) payable {
    require msg.value > 0
    sub_c67e32e9[address(msg.sender)] += msg.value
    emit 0x300b59d8: sub_c67e32e9[address(msg.sender)]
}

function setFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ownerAddress
    require arg1 != fees
    fees = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ownerAddress
    require arg1
    ownerAddress = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ownerAddress
    require arg1
    address(stor6.length) = arg1
}

function setDurationTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ownerAddress
    require arg1 != sub_f8b75fb5
    sub_f8b75fb5 = arg1
}

function setMinimumBetAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == ownerAddress
    require arg1 != minimumBetAmount
    minimumBetAmount = arg1
}

function sub_e91eccf6(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == ownerAddress
    require arg2 >= 1
    require arg2 <= 6
    sub_d86bed9b[arg2] = arg1
}

function sub_fbdacd40(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require msg.sender == ownerAddress
    require address(arg1)
    require arg2 >= 1
    require arg2 <= 6
    sub_44bb8279[arg2] = address(arg1)
}

function getDetail(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1, 
           stor1[arg1].field_768,
           stor1[arg1].field_256,
           stor1[arg1].field_1536,
           stor1[arg1].field_1024,
           bool(uint8(stor1[arg1].field_1280))
}

function sub_92f816bc(?) {
    require sub_c67e32e9[address(msg.sender)] > 0
    sub_c67e32e9[address(msg.sender)] = 0
    call msg.sender with:
       value sub_c67e32e9[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfc947776: 0
}

function sub_a356aa65(?) {
    mem[96] = 7
    mem[64] = 352
    mem[128 len 224] = code.data[12951 len 224]
    idx = 1
    while idx <= 6:
        mem[0] = idx
        mem[32] = 12
        require idx < 7
        mem[(32 * idx) + 128] = sub_44bb8279[idx]
        idx = idx + 1
        continue 
    mem[352] = 32
    mem[384] = 7
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < 7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len -mem[64] + 640
}

function withdraw() {
    if sub_44bb8279[1] != msg.sender:
        if sub_44bb8279[2] != msg.sender:
            if sub_44bb8279[3] != msg.sender:
                if sub_44bb8279[4] != msg.sender:
                    if sub_44bb8279[5] != msg.sender:
                        require msg.sender == sub_44bb8279[6]
    require collectedFees > 0
    idx = 1
    while idx <= 6:
        mem[0] = idx
        mem[32] = 12
        call sub_44bb8279[idx] with:
           value collectedFees * sub_d86bed9b[idx] / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    collectedFees = 0
    emit 0xb7ee31f7: 0
}

function addBet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.value >= minimumBetAmount
    if arg1 != 1:
        stor1[stor4].field_2048 += msg.value
        stor1[stor4].field_1536++
        stor1[stor4][9][stor1[stor4].field_1536].field_0 = stor1[stor4].field_1536
        address(stor1[stor4][9][stor1[stor4].field_1536].field_256) = msg.sender
        uint8(stor1[stor4][9][stor1[stor4].field_1536].field_416) = 2
    else:
        stor1[stor4].field_1792 += msg.value
        stor1[stor4].field_1536++
        stor1[stor4][9][stor1[stor4].field_1536].field_0 = stor1[stor4].field_1536
        address(stor1[stor4][9][stor1[stor4].field_1536].field_256) = msg.sender
        uint8(stor1[stor4][9][stor1[stor4].field_1536].field_416) = 1
    stor1[stor4][9][stor1[stor4].field_1536].field_512 = msg.value
    emit 0x5169fac1: stor1[stor4].field_1536
}

function sub_b315a67f(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 >= minimumBetAmount
    require sub_c67e32e9[address(msg.sender)] >= arg2
    sub_c67e32e9[address(msg.sender)] -= arg2
    if arg1 != 1:
        stor1[stor4].field_2048 += arg2
        stor1[stor4].field_1536++
        stor1[stor4][9][stor1[stor4].field_1536].field_0 = stor1[stor4].field_1536
        address(stor1[stor4][9][stor1[stor4].field_1536].field_256) = msg.sender
        uint8(stor1[stor4][9][stor1[stor4].field_1536].field_416) = 2
    else:
        stor1[stor4].field_1792 += arg2
        stor1[stor4].field_1536++
        stor1[stor4][9][stor1[stor4].field_1536].field_0 = stor1[stor4].field_1536
        address(stor1[stor4][9][stor1[stor4].field_1536].field_256) = msg.sender
        uint8(stor1[stor4][9][stor1[stor4].field_1536].field_416) = 1
    stor1[stor4][9][stor1[stor4].field_1536].field_512 = arg2
    emit 0x5169fac1: stor1[stor4].field_1536
}

function sub_c5ca93a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 1
    mem[96] = stor1[arg1].field_1536
    if not stor1[arg1].field_1536:
        mem[(32 * stor1[arg1].field_1536) + 128] = stor1[arg1].field_1536
        mem[(64 * stor1[arg1].field_1536) + 160] = stor1[arg1].field_1536
        mem[64] = (98 * stor1[arg1].field_1536) + 192
        idx = 1
        s = 0
        while idx <= stor1[arg1].field_1536:
            require s < mem[96]
            mem[(32 * s) + 128] = address(stor1[arg1][9][idx].field_256)
            require s < mem[(32 * stor1[arg1].field_1536) + 128]
            mem[(32 * s) + (32 * stor1[arg1].field_1536) + 160] = stor1[arg1][9][idx].field_512
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 9
            require s < mem[(64 * stor1[arg1].field_1536) + 160]
            require uint8(stor1[arg1][9][idx].field_416) <= 2
            mem[(32 * s) + (64 * stor1[arg1].field_1536) + 192] = uint8(stor1[arg1][9][idx].field_416)
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = 128
        _49 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 160
        while idx < _49:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * _49) + 160
        _65 = mem[(32 * stor1[arg1].field_1536) + 128]
        mem[mem[64] + (32 * _49) + 160] = mem[(32 * stor1[arg1].field_1536) + 128]
        mem[mem[64] + (32 * _49) + 192 len 32 * _65] = mem[(32 * stor1[arg1].field_1536) + 160 len 32 * _65]
        mem[mem[64] + 96] = (32 * _49) + (32 * _65) + 192
        _77 = mem[(64 * stor1[arg1].field_1536) + 160]
        mem[mem[64] + (32 * _49) + (32 * _65) + 192] = mem[(64 * stor1[arg1].field_1536) + 160]
        idx = 0
        s = (64 * stor1[arg1].field_1536) + 192
        t = mem[64] + (32 * _49) + (32 * _65) + 224
        while idx < _77:
            require mem[s] < 3
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return arg1, 
               128,
               (32 * _49) + 160,
               (32 * _49) + (32 * _65) + 192,
               mem[mem[64] + 128 len (32 * _49) + (32 * _65) + (32 * _77) + 96]
    mem[128 len 32 * stor1[arg1].field_1536] = code.data[12951 len 32 * stor1[arg1].field_1536]
    mem[(32 * stor1[arg1].field_1536) + 128] = stor1[arg1].field_1536
    mem[(32 * stor1[arg1].field_1536) + 160 len 32 * stor1[arg1].field_1536] = code.data[12951 len 32 * stor1[arg1].field_1536]
    mem[(64 * stor1[arg1].field_1536) + 160] = stor1[arg1].field_1536
    mem[64] = (98 * stor1[arg1].field_1536) + 192
    mem[(64 * stor1[arg1].field_1536) + 192 len 32 * stor1[arg1].field_1536] = code.data[12951 len 32 * stor1[arg1].field_1536]
    idx = 1
    s = 0
    while idx <= stor1[arg1].field_1536:
        require s < mem[96]
        mem[(32 * s) + 128] = address(stor1[arg1][9][idx].field_256)
        require s < mem[(32 * stor1[arg1].field_1536) + 128]
        mem[(32 * s) + (32 * stor1[arg1].field_1536) + 160] = stor1[arg1][9][idx].field_512
        mem[0] = idx
        mem[32] = sha3(arg1, 1) + 9
        require s < mem[(64 * stor1[arg1].field_1536) + 160]
        require uint8(stor1[arg1][9][idx].field_416) <= 2
        mem[(32 * s) + (64 * stor1[arg1].field_1536) + 192] = uint8(stor1[arg1][9][idx].field_416)
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 128
    _50 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 160
    while idx < _50:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * _50) + 160
    _66 = mem[(32 * stor1[arg1].field_1536) + 128]
    mem[mem[64] + (32 * _50) + 160] = mem[(32 * stor1[arg1].field_1536) + 128]
    mem[mem[64] + (32 * _50) + 192 len 32 * _66] = mem[(32 * stor1[arg1].field_1536) + 160 len 32 * _66]
    mem[mem[64] + 96] = (32 * _50) + (32 * _66) + 192
    _78 = mem[(64 * stor1[arg1].field_1536) + 160]
    mem[mem[64] + (32 * _50) + (32 * _66) + 192] = mem[(64 * stor1[arg1].field_1536) + 160]
    idx = 0
    s = (64 * stor1[arg1].field_1536) + 192
    t = mem[64] + (32 * _50) + (32 * _66) + 224
    while idx < _78:
        require mem[s] < 3
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return arg1, 
           128,
           (32 * _50) + 160,
           (32 * _50) + (32 * _66) + 192,
           mem[mem[64] + 128 len (32 * _50) + (32 * _66) + (32 * _78) + 96]
}

function getRoundDetail(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 1
    mem[96] = stor1[arg1].field_1536
    if not stor1[arg1].field_1536:
        mem[(32 * stor1[arg1].field_1536) + 128] = stor1[arg1].field_1536
        mem[(64 * stor1[arg1].field_1536) + 160] = stor1[arg1].field_1536
        mem[64] = (98 * stor1[arg1].field_1536) + 192
        idx = 1
        s = 0
        while idx <= stor1[arg1].field_1536:
            require s < mem[96]
            mem[(32 * s) + 128] = address(stor1[arg1][9][idx].field_256)
            require s < mem[(32 * stor1[arg1].field_1536) + 128]
            mem[(32 * s) + (32 * stor1[arg1].field_1536) + 160] = stor1[arg1][9][idx].field_512
            mem[0] = idx
            mem[32] = sha3(arg1, 1) + 9
            require s < mem[(64 * stor1[arg1].field_1536) + 160]
            require uint8(stor1[arg1][9][idx].field_416) <= 2
            mem[(32 * s) + (64 * stor1[arg1].field_1536) + 192] = uint8(stor1[arg1][9][idx].field_416)
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = 192
        mem[mem[64] + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 224
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * mem[96]) + 224
        _65 = mem[(32 * stor1[arg1].field_1536) + 128]
        mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * stor1[arg1].field_1536) + 128]
        mem[mem[64] + (32 * mem[96]) + 256 len 32 * _65] = mem[(32 * stor1[arg1].field_1536) + 160 len 32 * _65]
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _65) + 256
        _77 = mem[(64 * stor1[arg1].field_1536) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _65) + 256] = mem[(64 * stor1[arg1].field_1536) + 160]
        idx = 0
        s = (64 * stor1[arg1].field_1536) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _65) + 288
        while idx < _77:
            require mem[s] < 3
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return arg1, 
               192,
               (32 * mem[96]) + 224,
               (32 * mem[96]) + (32 * _65) + 256,
               stor1[arg1].field_2048,
               stor1[arg1].field_1792,
               mem[mem[64] + 192 len (32 * mem[96]) + (32 * _65) + (32 * _77) + 96]
    mem[128 len 32 * stor1[arg1].field_1536] = code.data[12951 len 32 * stor1[arg1].field_1536]
    mem[(32 * stor1[arg1].field_1536) + 128] = stor1[arg1].field_1536
    mem[(32 * stor1[arg1].field_1536) + 160 len 32 * stor1[arg1].field_1536] = code.data[12951 len 32 * stor1[arg1].field_1536]
    mem[(64 * stor1[arg1].field_1536) + 160] = stor1[arg1].field_1536
    mem[64] = (98 * stor1[arg1].field_1536) + 192
    mem[(64 * stor1[arg1].field_1536) + 192 len 32 * stor1[arg1].field_1536] = code.data[12951 len 32 * stor1[arg1].field_1536]
    idx = 1
    s = 0
    while idx <= stor1[arg1].field_1536:
        require s < mem[96]
        mem[(32 * s) + 128] = address(stor1[arg1][9][idx].field_256)
        require s < mem[(32 * stor1[arg1].field_1536) + 128]
        mem[(32 * s) + (32 * stor1[arg1].field_1536) + 160] = stor1[arg1][9][idx].field_512
        mem[0] = idx
        mem[32] = sha3(arg1, 1) + 9
        require s < mem[(64 * stor1[arg1].field_1536) + 160]
        require uint8(stor1[arg1][9][idx].field_416) <= 2
        mem[(32 * s) + (64 * stor1[arg1].field_1536) + 192] = uint8(stor1[arg1][9][idx].field_416)
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 192
    mem[mem[64] + 192] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 224
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * mem[96]) + 224
    _66 = mem[(32 * stor1[arg1].field_1536) + 128]
    mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * stor1[arg1].field_1536) + 128]
    mem[mem[64] + (32 * mem[96]) + 256 len 32 * _66] = mem[(32 * stor1[arg1].field_1536) + 160 len 32 * _66]
    mem[mem[64] + 96] = (32 * mem[96]) + (32 * _66) + 256
    _78 = mem[(64 * stor1[arg1].field_1536) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _66) + 256] = mem[(64 * stor1[arg1].field_1536) + 160]
    idx = 0
    s = (64 * stor1[arg1].field_1536) + 192
    t = mem[64] + (32 * mem[96]) + (32 * _66) + 288
    while idx < _78:
        require mem[s] < 3
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return arg1, 
           192,
           (32 * mem[96]) + 224,
           (32 * mem[96]) + (32 * _66) + 256,
           stor1[arg1].field_2048,
           stor1[arg1].field_1792,
           mem[mem[64] + 192 len (32 * mem[96]) + (32 * _66) + (32 * _78) + 96]
}

function sub_c300637c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor6.length)
    stor14 = block.timestamp
    if sub_3a5b375d <= 0:
        if stor1[stor5 + 1].field_0 != sub_7362c8fd + 1:
            stor1[stor5 + 1].field_0 = sub_7362c8fd + 1
            stor1[stor5 + 1].field_256 = 0
            stor1[stor5 + 1].field_512 = 0
            stor1[stor5 + 1].field_768 = 0
            stor1[stor5 + 1].field_1024 = 0
            uint8(stor1[stor5 + 1].field_1280) = 0
            stor1[stor5 + 1].field_1536 = 0
            stor1[stor5 + 1].field_1792 = 0
            stor1[stor5 + 1].field_2048 = 0
    else:
        require ext_code.size(stor0)
        staticcall stor0.getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 'BTC', 3, 'USD'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require bool(ceil32(return_data.size) + 288 <= test266151307())
        mem[64] = ceil32(return_data.size) + 288
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        stor1[stor3].field_1024 = ext_call.return_data[0]
        if stor1[stor3].field_768 == stor1[stor3].field_1024:
            idx = 1
            while idx <= stor1[stor3].field_1536:
                mem[0] = address(stor1[stor3][9][idx].field_256)
                mem[32] = 2
                sub_c67e32e9[address(stor1[stor3][9][idx].field_256)] += stor1[stor3][9][idx].field_512
                idx = idx + 1
                continue 
            uint8(stor1[stor3].field_1280) = 1
            if stor1[stor5 + 1].field_0 != sub_7362c8fd + 1:
                stor1[stor5 + 1].field_0 = sub_7362c8fd + 1
                stor1[stor5 + 1].field_256 = 0
                stor1[stor5 + 1].field_512 = 0
                stor1[stor5 + 1].field_768 = 0
                stor1[stor5 + 1].field_1024 = 0
                uint8(stor1[stor5 + 1].field_1280) = 0
                stor1[stor5 + 1].field_1536 = 0
                stor1[stor5 + 1].field_1792 = 0
                stor1[stor5 + 1].field_2048 = 0
        else:
            if not stor1[stor3].field_1792:
                idx = 1
                while idx <= stor1[stor3].field_1536:
                    mem[0] = address(stor1[stor3][9][idx].field_256)
                    mem[32] = 2
                    sub_c67e32e9[address(stor1[stor3][9][idx].field_256)] += stor1[stor3][9][idx].field_512
                    idx = idx + 1
                    continue 
                uint8(stor1[stor3].field_1280) = 1
                if stor1[stor5 + 1].field_0 != sub_7362c8fd + 1:
                    stor1[stor5 + 1].field_0 = sub_7362c8fd + 1
                    stor1[stor5 + 1].field_256 = 0
                    stor1[stor5 + 1].field_512 = 0
                    stor1[stor5 + 1].field_768 = 0
                    stor1[stor5 + 1].field_1024 = 0
                    uint8(stor1[stor5 + 1].field_1280) = 0
                    stor1[stor5 + 1].field_1536 = 0
                    stor1[stor5 + 1].field_1792 = 0
                    stor1[stor5 + 1].field_2048 = 0
            else:
                if not stor1[stor3].field_2048:
                    idx = 1
                    while idx <= stor1[stor3].field_1536:
                        mem[0] = address(stor1[stor3][9][idx].field_256)
                        mem[32] = 2
                        sub_c67e32e9[address(stor1[stor3][9][idx].field_256)] += stor1[stor3][9][idx].field_512
                        idx = idx + 1
                        continue 
                    uint8(stor1[stor3].field_1280) = 1
                    if stor1[stor5 + 1].field_0 != sub_7362c8fd + 1:
                        stor1[stor5 + 1].field_0 = sub_7362c8fd + 1
                        stor1[stor5 + 1].field_256 = 0
                        stor1[stor5 + 1].field_512 = 0
                        stor1[stor5 + 1].field_768 = 0
                        stor1[stor5 + 1].field_1024 = 0
                        uint8(stor1[stor5 + 1].field_1280) = 0
                        stor1[stor5 + 1].field_1536 = 0
                        stor1[stor5 + 1].field_1792 = 0
                        stor1[stor5 + 1].field_2048 = 0
                else:
                    if stor1[stor3].field_768 < stor1[stor3].field_1024:
                        idx = 1
                        while idx <= stor1[stor3].field_1536:
                            mem[0] = idx
                            mem[32] = sha3(sub_3a5b375d, 1) + 9
                            require uint8(stor1[stor3][9][idx].field_416) <= 2
                            if uint8(stor1[stor3][9][idx].field_416) == 1:
                                require stor1[stor3].field_1792
                                sub_c67e32e9[address(stor1[stor3][9][idx].field_256)] = sub_c67e32e9[address(stor1[stor3][9][idx].field_256)] + stor1[stor3][9][idx].field_512 + (stor1[stor3][9][idx].field_512 * stor1[stor3].field_2048 / stor1[stor3].field_1792) - (stor1[stor3][9][idx].field_512 * stor1[stor3].field_2048 / stor1[stor3].field_1792 * fees / 100)
                                collectedFees += stor1[stor3][9][idx].field_512 * stor1[stor3].field_2048 / stor1[stor3].field_1792 * fees / 100
                                mem[0] = idx
                                mem[32] = sha3(sub_3a5b375d, 1) + 9
                                mem[mem[64]] = stor1[stor3].field_0
                                mem[mem[64] + 32] = address(stor1[stor3][9][idx].field_256)
                                mem[mem[64] + 64] = (stor1[stor3][9][idx].field_512 * stor1[stor3].field_2048 / stor1[stor3].field_1792) - (stor1[stor3][9][idx].field_512 * stor1[stor3].field_2048 / stor1[stor3].field_1792 * fees / 100)
                                emit 0x44e456a6: stor1[stor3].field_0, address(stor1[stor3][9][idx].field_256), (stor1[stor3][9][idx].field_512 * stor1[stor3].field_2048 / stor1[stor3].field_1792) - (stor1[stor3][9][idx].field_512 * stor1[stor3].field_2048 / stor1[stor3].field_1792 * fees / 100)
                            idx = idx + 1
                            continue 
                        uint8(stor1[stor3].field_1280) = 1
                        if stor1[stor5 + 1].field_0 != sub_7362c8fd + 1:
                            stor1[stor5 + 1].field_0 = sub_7362c8fd + 1
                            stor1[stor5 + 1].field_256 = 0
                            stor1[stor5 + 1].field_512 = 0
                            stor1[stor5 + 1].field_768 = 0
                            stor1[stor5 + 1].field_1024 = 0
                            uint8(stor1[stor5 + 1].field_1280) = 0
                            stor1[stor5 + 1].field_1536 = 0
                            stor1[stor5 + 1].field_1792 = 0
                            stor1[stor5 + 1].field_2048 = 0
                    else:
                        if stor1[stor3].field_768 <= stor1[stor3].field_1024:
                            idx = 1
                            while idx <= stor1[stor3].field_1536:
                                mem[0] = idx
                                mem[32] = sha3(sub_3a5b375d, 1) + 9
                                require uint8(stor1[stor3][9][idx].field_416) <= 2
                                require uint8(stor1[stor3][9][idx].field_416)
                                idx = idx + 1
                                continue 
                        else:
                            idx = 1
                            while idx <= stor1[stor3].field_1536:
                                mem[0] = idx
                                mem[32] = sha3(sub_3a5b375d, 1) + 9
                                require uint8(stor1[stor3][9][idx].field_416) <= 2
                                if uint8(stor1[stor3][9][idx].field_416) == 2:
                                    require stor1[stor3].field_2048
                                    sub_c67e32e9[address(stor1[stor3][9][idx].field_256)] = sub_c67e32e9[address(stor1[stor3][9][idx].field_256)] + stor1[stor3][9][idx].field_512 + (stor1[stor3][9][idx].field_512 * stor1[stor3].field_1792 / stor1[stor3].field_2048) - (stor1[stor3][9][idx].field_512 * stor1[stor3].field_1792 / stor1[stor3].field_2048 * fees / 100)
                                    collectedFees += stor1[stor3][9][idx].field_512 * stor1[stor3].field_1792 / stor1[stor3].field_2048 * fees / 100
                                    mem[0] = idx
                                    mem[32] = sha3(sub_3a5b375d, 1) + 9
                                    mem[mem[64]] = stor1[stor3].field_0
                                    mem[mem[64] + 32] = address(stor1[stor3][9][idx].field_256)
                                    mem[mem[64] + 64] = (stor1[stor3][9][idx].field_512 * stor1[stor3].field_1792 / stor1[stor3].field_2048) - (stor1[stor3][9][idx].field_512 * stor1[stor3].field_1792 / stor1[stor3].field_2048 * fees / 100)
                                    emit 0x44e456a6: stor1[stor3].field_0, address(stor1[stor3][9][idx].field_256), (stor1[stor3][9][idx].field_512 * stor1[stor3].field_1792 / stor1[stor3].field_2048) - (stor1[stor3][9][idx].field_512 * stor1[stor3].field_1792 / stor1[stor3].field_2048 * fees / 100)
                                idx = idx + 1
                                continue 
                        uint8(stor1[stor3].field_1280) = 1
                        if stor1[stor5 + 1].field_0 != sub_7362c8fd + 1:
                            stor1[stor5 + 1].field_0 = sub_7362c8fd + 1
                            stor1[stor5 + 1].field_256 = 0
                            stor1[stor5 + 1].field_512 = 0
                            stor1[stor5 + 1].field_768 = 0
                            stor1[stor5 + 1].field_1024 = 0
                            uint8(stor1[stor5 + 1].field_1280) = 0
                            stor1[stor5 + 1].field_1536 = 0
                            stor1[stor5 + 1].field_1792 = 0
                            stor1[stor5 + 1].field_2048 = 0
    sub_3a5b375d = sub_1d249447
    sub_1d249447 = sub_7362c8fd
    sub_7362c8fd++
    stor1[stor3].field_256 = stor14
    stor1[stor3].field_768 = arg1
    stor1[stor4].field_256 = stor14 + sub_f8b75fb5
    emit 0x599cea84: sub_3a5b375d
}

function sub_22d68459(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307() and (32 * ('cd', 100).length) + 224 >= 192
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 4).length:
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] >= minimumBetAmount
        require idx < mem[96]
        require idx < mem[96]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 128]].field_0 == mem[(32 * idx) + 128]:
            require idx < mem[96]
            _716 = sha3(mem[(32 * idx) + 128], 1)
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[32] = sha3(mem[(32 * idx) + 128], 1) + 9
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            if address(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_256) == msg.sender:
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] >= minimumBetAmount
                require uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) <= 2
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] == uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416):
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] != 1:
                        stor1[mem[(32 * idx) + 128]].field_2048 = stor1[mem[(32 * idx) + 128]].field_2048 + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] - stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_512
                        uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) = 2
                    else:
                        stor1[mem[(32 * idx) + 128]].field_1792 = stor1[mem[(32 * idx) + 128]].field_1792 + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] - stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_512
                        uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) = 1
                else:
                    if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] == 1:
                        stor1[mem[(32 * idx) + 128]].field_2048 -= stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_512
                        stor1[mem[(32 * idx) + 128]].field_1792 += mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) = 1
                    else:
                        if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] != 2:
                            uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) = 0
                        else:
                            require uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) <= 2
                            if uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) != 1:
                                uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) = 0
                            else:
                                stor1[mem[(32 * idx) + 128]].field_1792 -= stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_512
                                stor1[mem[(32 * idx) + 128]].field_2048 += mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                                uint8(stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_416) = 2
                mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                mem[32] = sha3(mem[(32 * idx) + 128], 1) + 9
                stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_512 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                emit 0x4f6dd74e: mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                idx = idx + 1
                s = s + stor1[mem[(32 * idx) + 128]][9][mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]].field_512
                t = t + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                continue 
            _744 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] != 1:
                stor1[mem[(32 * idx) + 128]].field_2048 += mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                stor1[mem[(32 * idx) + 128]].field_1536++
                _765 = mem[64]
                mem[64] = mem[64] + 128
                mem[_765] = stor1[mem[(32 * idx) + 128]].field_1536
                mem[_765 + 32] = msg.sender
                mem[_765 + 64] = 2
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[_765 + 96] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                mem[0] = uint256(stor6[_716])
                mem[32] = _716 + 9
                stor[_716 + 9][uint256(stor6[_716])] = uint256(stor6[_716])
                address(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_716'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_716')))].field_0) = msg.sender
                uint8(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_716'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_716')))].field_160) = 2
                sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_716'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_716')))] = mem[_765 + 96]
            else:
                stor1[mem[(32 * idx) + 128]].field_1792 += mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                stor1[mem[(32 * idx) + 128]].field_1536++
                _766 = mem[64]
                mem[64] = mem[64] + 128
                mem[_766] = stor1[mem[(32 * idx) + 128]].field_1536
                mem[_766 + 32] = msg.sender
                mem[_766 + 64] = 1
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[_766 + 96] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                mem[0] = uint256(stor6[_716])
                mem[32] = _716 + 9
                stor[_716 + 9][uint256(stor6[_716])] = uint256(stor6[_716])
                address(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_716'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_716')))].field_0) = msg.sender
                uint8(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_716'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_716')))].field_160) = 1
                sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_716'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_716')))] = mem[_766 + 96]
            emit 0x4f6dd74e: uint256(stor6[_716])
            idx = idx + 1
            s = s
            t = t + _744
            continue 
        _710 = mem[64]
        mem[64] = mem[64] + 288
        require idx < mem[96]
        mem[_710] = mem[(32 * idx) + 128]
        mem[_710 + 32] = 0
        mem[_710 + 64] = 0
        mem[_710 + 96] = 0
        mem[_710 + 128] = 0
        mem[_710 + 160] = 0
        mem[_710 + 192] = 0
        mem[_710 + 224] = 0
        mem[_710 + 256] = 0
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        stor1[mem[(32 * idx) + 128]].field_0 = mem[_710]
        stor1[mem[(32 * idx) + 128]].field_256 = 0
        stor1[mem[(32 * idx) + 128]].field_512 = 0
        stor1[mem[(32 * idx) + 128]].field_768 = 0
        stor1[mem[(32 * idx) + 128]].field_1024 = 0
        uint8(stor1[mem[(32 * idx) + 128]].field_1280) = 0
        stor1[mem[(32 * idx) + 128]].field_1536 = 0
        stor1[mem[(32 * idx) + 128]].field_1792 = 0
        stor1[mem[(32 * idx) + 128]].field_2048 = 0
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        _733 = sha3(mem[(32 * idx) + 128], 1)
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _742 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] != 1:
            stor1[mem[(32 * idx) + 128]].field_2048 += mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            stor1[mem[(32 * idx) + 128]].field_1536++
            _763 = mem[64]
            mem[64] = mem[64] + 128
            mem[_763] = stor1[mem[(32 * idx) + 128]].field_1536
            mem[_763 + 32] = msg.sender
            mem[_763 + 64] = 2
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[_763 + 96] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[0] = uint256(stor6[_733])
            mem[32] = _733 + 9
            stor[_733 + 9][uint256(stor6[_733])] = mem[_763]
            address(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_733'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_733')))].field_0) = msg.sender
            uint8(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_733'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_733')))].field_160) = 2
            sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_733'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_733')))] = mem[_763 + 96]
        else:
            stor1[mem[(32 * idx) + 128]].field_1792 += mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            stor1[mem[(32 * idx) + 128]].field_1536++
            _764 = mem[64]
            mem[64] = mem[64] + 128
            mem[_764] = stor1[mem[(32 * idx) + 128]].field_1536
            mem[_764 + 32] = msg.sender
            mem[_764 + 64] = 1
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[_764 + 96] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[0] = uint256(stor6[_733])
            mem[32] = _733 + 9
            stor[_733 + 9][uint256(stor6[_733])] = mem[_764]
            address(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_733'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_733')))].field_0) = msg.sender
            uint8(stor1[('map', ('type', 256, ('stor', ('array', ('var', '_733'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_733')))].field_160) = 1
            sub_c67e32e9[('map', ('type', 256, ('stor', ('array', ('var', '_733'), ('name', 'stor6', 6)))), ('add', 9, ('var', '_733')))] = mem[_764 + 96]
        emit 0x4f6dd74e: uint256(stor6[_733])
        idx = idx + 1
        s = s
        t = t + _742
        continue 
    if t > s:
        require msg.value >= t - s
        if msg.value > t - s:
            require msg.value >= t - s
            sub_c67e32e9[address(msg.sender)] = sub_c67e32e9[address(msg.sender)] + msg.value - t + s
    else:
        sub_c67e32e9[address(msg.sender)] = sub_c67e32e9[address(msg.sender)] + s - t
        require msg.value >= 0
        if msg.value > 0:
            require msg.value >= 0
            sub_c67e32e9[address(msg.sender)] += msg.value
}



}
