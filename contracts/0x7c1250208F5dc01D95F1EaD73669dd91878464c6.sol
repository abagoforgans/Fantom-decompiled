contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 listingPrice;
mapping of struct stor5;
mapping of struct stor6;

function getListingPrice() {
    return listingPrice
}

function _fallback() payable {
    revert
}

function sub_6805a857(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg4 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    if listingPrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to listing price'
    stor1++
    stor5[stor1].field_0 = stor1
    stor5[stor1].field_256 = address(arg1)
    stor5[stor1].field_512 = arg2
    stor5[stor1].field_768 = msg.sender
    stor5[stor1].field_1024 = 0
    stor5[stor1].field_1280 = 0
    stor5[stor1].field_1280 = arg3
    stor5[stor1].field_1536 = arg4
    stor5[stor1].field_1792 = 0
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x24b4efbd: msg.sender, 0, arg3, arg4, 0, stor1, address(arg1), arg2
    stor0 = 1
}

function sub_c528c450(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg3 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    if listingPrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be equal to listing price'
    stor1++
    stor6[stor1].field_0 = stor1
    stor6[stor1].field_256 = address(arg1)
    stor6[stor1].field_512 = arg2
    stor6[stor1].field_768 = msg.sender
    stor6[stor1].field_1024 = 0
    stor6[stor1].field_1280 = 0
    stor6[stor1].field_1280 = arg3
    stor6[stor1].field_1536 = arg4
    stor6[stor1].field_1792 = arg5
    stor6[stor1].field_2048 = 0
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2, arg4, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x43101c8b: msg.sender, 0, arg3, arg4, arg5, 0, stor1, address(arg1), arg2
    stor0 = 1
}

function sub_6df330eb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor5[arg2].field_1536 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    call stor5[arg2].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor5[arg2].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5[arg2].field_1024 = msg.sender
    stor5[arg2].field_1792 = 1
    stor2++
    call stor3 with:
       value listingPrice wei
         gas 2300 * is_zero(value) wei
    if stor5[arg2].field_1536 and stor5[arg2].field_1280 > -1 / stor5[arg2].field_1536:
        revert with 'NH{q', 17
    call address(arg3) with:
       value stor5[arg2].field_1536 * stor5[arg2].field_1280 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function sub_bf4c7bbe(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor6[arg2].field_1280 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    call stor6[arg2].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, stor6[arg2].field_512, stor6[arg2].field_1536, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[arg2].field_1024 = msg.sender
    stor6[arg2].field_2048 = 1
    stor2++
    call stor3 with:
       value listingPrice wei
         gas 2300 * is_zero(value) wei
    if stor6[arg2].field_1280 and stor6[arg2].field_1792 > -1 / stor6[arg2].field_1280:
        revert with 'NH{q', 17
    call address(arg3) with:
       value stor6[arg2].field_1280 * stor6[arg2].field_1792 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function sub_2687bfef(?) {
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
            mem[32] = 5
            if stor5[idx + 1].field_1024:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor5[idx + 1].field_0
            mem[32] = 5
            _49 = mem[64]
            mem[64] = mem[64] + 256
            mem[_49] = stor5[stor5[idx + 1].field_0].field_0
            mem[_49 + 32] = stor5[stor5[idx + 1].field_0].field_256
            mem[_49 + 64] = stor5[stor5[idx + 1].field_0].field_512
            mem[_49 + 96] = stor5[stor5[idx + 1].field_0].field_768
            mem[_49 + 128] = stor5[stor5[idx + 1].field_0].field_1024
            mem[_49 + 160] = stor5[stor5[idx + 1].field_0].field_1280
            mem[_49 + 192] = stor5[stor5[idx + 1].field_0].field_1536
            mem[_49 + 224] = bool(stor5[stor5[idx + 1].field_0].field_1792)
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
            mem[t + 96] = mem[_73 + 108 len 20]
            mem[t + 128] = mem[_73 + 140 len 20]
            mem[t + 160] = mem[_73 + 160]
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
        mem[32] = 5
        if stor5[idx + 1].field_1024:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor5[idx + 1].field_0
        mem[32] = 5
        _108 = mem[64]
        mem[64] = mem[64] + 256
        mem[_108] = stor5[stor5[idx + 1].field_0].field_0
        mem[_108 + 32] = stor5[stor5[idx + 1].field_0].field_256
        mem[_108 + 64] = stor5[stor5[idx + 1].field_0].field_512
        mem[_108 + 96] = stor5[stor5[idx + 1].field_0].field_768
        mem[_108 + 128] = stor5[stor5[idx + 1].field_0].field_1024
        mem[_108 + 160] = stor5[stor5[idx + 1].field_0].field_1280
        mem[_108 + 192] = stor5[stor5[idx + 1].field_0].field_1536
        mem[_108 + 224] = bool(stor5[stor5[idx + 1].field_0].field_1792)
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
        mem[t + 96] = mem[_117 + 108 len 20]
        mem[t + 128] = mem[_117 + 140 len 20]
        mem[t + 160] = mem[_117 + 160]
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

function sub_0c328c25(?) {
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_768 != msg.sender:
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
            mem[32] = 5
            if stor5[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor5[idx + 1].field_0
            mem[32] = 5
            _69 = mem[64]
            mem[64] = mem[64] + 256
            mem[_69] = stor5[stor5[idx + 1].field_0].field_0
            mem[_69 + 32] = stor5[stor5[idx + 1].field_0].field_256
            mem[_69 + 64] = stor5[stor5[idx + 1].field_0].field_512
            mem[_69 + 96] = stor5[stor5[idx + 1].field_0].field_768
            mem[_69 + 128] = stor5[stor5[idx + 1].field_0].field_1024
            mem[_69 + 160] = stor5[stor5[idx + 1].field_0].field_1280
            mem[_69 + 192] = stor5[stor5[idx + 1].field_0].field_1536
            mem[_69 + 224] = bool(stor5[stor5[idx + 1].field_0].field_1792)
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
            mem[t + 96] = mem[_93 + 108 len 20]
            mem[t + 128] = mem[_93 + 140 len 20]
            mem[t + 160] = mem[_93 + 160]
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
        mem[32] = 5
        if stor5[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor5[idx + 1].field_0
        mem[32] = 5
        _128 = mem[64]
        mem[64] = mem[64] + 256
        mem[_128] = stor5[stor5[idx + 1].field_0].field_0
        mem[_128 + 32] = stor5[stor5[idx + 1].field_0].field_256
        mem[_128 + 64] = stor5[stor5[idx + 1].field_0].field_512
        mem[_128 + 96] = stor5[stor5[idx + 1].field_0].field_768
        mem[_128 + 128] = stor5[stor5[idx + 1].field_0].field_1024
        mem[_128 + 160] = stor5[stor5[idx + 1].field_0].field_1280
        mem[_128 + 192] = stor5[stor5[idx + 1].field_0].field_1536
        mem[_128 + 224] = bool(stor5[stor5[idx + 1].field_0].field_1792)
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
        mem[t + 96] = mem[_137 + 108 len 20]
        mem[t + 128] = mem[_137 + 140 len 20]
        mem[t + 160] = mem[_137 + 160]
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

function sub_d01a7bf6(?) {
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 5
        if stor5[idx + 1].field_1024 != msg.sender:
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
            mem[32] = 5
            if stor5[idx + 1].field_1024 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor5[idx + 1].field_0
            mem[32] = 5
            _69 = mem[64]
            mem[64] = mem[64] + 256
            mem[_69] = stor5[stor5[idx + 1].field_0].field_0
            mem[_69 + 32] = stor5[stor5[idx + 1].field_0].field_256
            mem[_69 + 64] = stor5[stor5[idx + 1].field_0].field_512
            mem[_69 + 96] = stor5[stor5[idx + 1].field_0].field_768
            mem[_69 + 128] = stor5[stor5[idx + 1].field_0].field_1024
            mem[_69 + 160] = stor5[stor5[idx + 1].field_0].field_1280
            mem[_69 + 192] = stor5[stor5[idx + 1].field_0].field_1536
            mem[_69 + 224] = bool(stor5[stor5[idx + 1].field_0].field_1792)
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
            mem[t + 96] = mem[_93 + 108 len 20]
            mem[t + 128] = mem[_93 + 140 len 20]
            mem[t + 160] = mem[_93 + 160]
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
        mem[32] = 5
        if stor5[idx + 1].field_1024 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor5[idx + 1].field_0
        mem[32] = 5
        _128 = mem[64]
        mem[64] = mem[64] + 256
        mem[_128] = stor5[stor5[idx + 1].field_0].field_0
        mem[_128 + 32] = stor5[stor5[idx + 1].field_0].field_256
        mem[_128 + 64] = stor5[stor5[idx + 1].field_0].field_512
        mem[_128 + 96] = stor5[stor5[idx + 1].field_0].field_768
        mem[_128 + 128] = stor5[stor5[idx + 1].field_0].field_1024
        mem[_128 + 160] = stor5[stor5[idx + 1].field_0].field_1280
        mem[_128 + 192] = stor5[stor5[idx + 1].field_0].field_1536
        mem[_128 + 224] = bool(stor5[stor5[idx + 1].field_0].field_1792)
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
        mem[t + 96] = mem[_137 + 108 len 20]
        mem[t + 128] = mem[_137 + 140 len 20]
        mem[t + 160] = mem[_137 + 160]
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

function sub_fd2643f1(?) {
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
            if stor6[idx + 1].field_1024:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _51 = mem[64]
            mem[64] = mem[64] + 288
            mem[_51] = stor6[stor6[idx + 1].field_0].field_0
            mem[_51 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_51 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_51 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_51 + 128] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_51 + 160] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_51 + 192] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_51 + 224] = stor6[stor6[idx + 1].field_0].field_1792
            mem[_51 + 256] = bool(stor6[stor6[idx + 1].field_0].field_2048)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _51
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 32
        _41 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _41:
            _77 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_77 + 44 len 20]
            mem[t + 64] = mem[_77 + 64]
            mem[t + 96] = mem[_77 + 108 len 20]
            mem[t + 128] = mem[_77 + 140 len 20]
            mem[t + 160] = mem[_77 + 160]
            mem[t + 192] = mem[_77 + 192]
            mem[t + 224] = mem[_77 + 224]
            mem[t + 256] = bool(mem[_77 + 256])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _40 + (288 * _41) + -mem[64] + 64
    mem[64] = (32 * stor1 - stor2) + 416
    mem[(32 * stor1 - stor2) + 128] = 0
    mem[(32 * stor1 - stor2) + 160] = 0
    mem[(32 * stor1 - stor2) + 192] = 0
    mem[(32 * stor1 - stor2) + 224] = 0
    mem[(32 * stor1 - stor2) + 256] = 0
    mem[(32 * stor1 - stor2) + 288] = 0
    mem[(32 * stor1 - stor2) + 320] = 0
    mem[(32 * stor1 - stor2) + 352] = 0
    mem[(32 * stor1 - stor2) + 384] = 0
    mem[var22001] = (32 * stor1 - stor2) + 128
    s = var22001
    idx = var22002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * stor1 - stor2) + 128] = 0
        mem[(32 * stor1 - stor2) + 160] = 0
        mem[(32 * stor1 - stor2) + 192] = 0
        mem[(32 * stor1 - stor2) + 224] = 0
        mem[(32 * stor1 - stor2) + 256] = 0
        mem[(32 * stor1 - stor2) + 288] = 0
        mem[(32 * stor1 - stor2) + 320] = 0
        mem[(32 * stor1 - stor2) + 352] = 0
        mem[(32 * stor1 - stor2) + 384] = 0
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
        if stor6[idx + 1].field_1024:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _114 = mem[64]
        mem[64] = mem[64] + 288
        mem[_114] = stor6[stor6[idx + 1].field_0].field_0
        mem[_114 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_114 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_114 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_114 + 128] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_114 + 160] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_114 + 192] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_114 + 224] = stor6[stor6[idx + 1].field_0].field_1792
        mem[_114 + 256] = bool(stor6[stor6[idx + 1].field_0].field_2048)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _114
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 32
    _107 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _107:
        _124 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_124 + 44 len 20]
        mem[t + 64] = mem[_124 + 64]
        mem[t + 96] = mem[_124 + 108 len 20]
        mem[t + 128] = mem[_124 + 140 len 20]
        mem[t + 160] = mem[_124 + 160]
        mem[t + 192] = mem[_124 + 192]
        mem[t + 224] = mem[_124 + 224]
        mem[t + 256] = bool(mem[_124 + 256])
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _106 + (288 * _107) + -mem[64] + 64
}

function sub_3e148fc0(?) {
    idx = 0
    s = 0
    while idx < stor1:
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = idx + 1
        mem[32] = 6
        if stor6[idx + 1].field_768 != msg.sender:
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
            if stor6[idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx > -2:
                revert with 'NH{q', 17
            mem[0] = stor6[idx + 1].field_0
            mem[32] = 6
            _72 = mem[64]
            mem[64] = mem[64] + 288
            mem[_72] = stor6[stor6[idx + 1].field_0].field_0
            mem[_72 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_72 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_72 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_72 + 128] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_72 + 160] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_72 + 192] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_72 + 224] = stor6[stor6[idx + 1].field_0].field_1792
            mem[_72 + 256] = bool(stor6[stor6[idx + 1].field_0].field_2048)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _72
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 32
        _62 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _62:
            _98 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_98 + 44 len 20]
            mem[t + 64] = mem[_98 + 64]
            mem[t + 96] = mem[_98 + 108 len 20]
            mem[t + 128] = mem[_98 + 140 len 20]
            mem[t + 160] = mem[_98 + 160]
            mem[t + 192] = mem[_98 + 192]
            mem[t + 224] = mem[_98 + 224]
            mem[t + 256] = bool(mem[_98 + 256])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _61 + (288 * _62) + -mem[64] + 64
    mem[64] = (32 * s) + 416
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 0
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
        if stor6[idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        mem[0] = stor6[idx + 1].field_0
        mem[32] = 6
        _135 = mem[64]
        mem[64] = mem[64] + 288
        mem[_135] = stor6[stor6[idx + 1].field_0].field_0
        mem[_135 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_135 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_135 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_135 + 128] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_135 + 160] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_135 + 192] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_135 + 224] = stor6[stor6[idx + 1].field_0].field_1792
        mem[_135 + 256] = bool(stor6[stor6[idx + 1].field_0].field_2048)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _135
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _127 = mem[64]
    mem[mem[64]] = 32
    _128 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _128:
        _145 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_145 + 44 len 20]
        mem[t + 64] = mem[_145 + 64]
        mem[t + 96] = mem[_145 + 108 len 20]
        mem[t + 128] = mem[_145 + 140 len 20]
        mem[t + 160] = mem[_145 + 160]
        mem[t + 192] = mem[_145 + 192]
        mem[t + 224] = mem[_145 + 224]
        mem[t + 256] = bool(mem[_145 + 256])
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _127 + (288 * _128) + -mem[64] + 64
}

function sub_c61543af(?) {
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
            _72 = mem[64]
            mem[64] = mem[64] + 288
            mem[_72] = stor6[stor6[idx + 1].field_0].field_0
            mem[_72 + 32] = stor6[stor6[idx + 1].field_0].field_256
            mem[_72 + 64] = stor6[stor6[idx + 1].field_0].field_512
            mem[_72 + 96] = stor6[stor6[idx + 1].field_0].field_768
            mem[_72 + 128] = stor6[stor6[idx + 1].field_0].field_1024
            mem[_72 + 160] = stor6[stor6[idx + 1].field_0].field_1280
            mem[_72 + 192] = stor6[stor6[idx + 1].field_0].field_1536
            mem[_72 + 224] = stor6[stor6[idx + 1].field_0].field_1792
            mem[_72 + 256] = bool(stor6[stor6[idx + 1].field_0].field_2048)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _72
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 32
        _62 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _62:
            _98 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_98 + 44 len 20]
            mem[t + 64] = mem[_98 + 64]
            mem[t + 96] = mem[_98 + 108 len 20]
            mem[t + 128] = mem[_98 + 140 len 20]
            mem[t + 160] = mem[_98 + 160]
            mem[t + 192] = mem[_98 + 192]
            mem[t + 224] = mem[_98 + 224]
            mem[t + 256] = bool(mem[_98 + 256])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _61 + (288 * _62) + -mem[64] + 64
    mem[64] = (32 * s) + 416
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[(32 * s) + 256] = 0
    mem[(32 * s) + 288] = 0
    mem[(32 * s) + 320] = 0
    mem[(32 * s) + 352] = 0
    mem[(32 * s) + 384] = 0
    mem[var14001] = (32 * s) + 128
    t = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 0
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
        _135 = mem[64]
        mem[64] = mem[64] + 288
        mem[_135] = stor6[stor6[idx + 1].field_0].field_0
        mem[_135 + 32] = stor6[stor6[idx + 1].field_0].field_256
        mem[_135 + 64] = stor6[stor6[idx + 1].field_0].field_512
        mem[_135 + 96] = stor6[stor6[idx + 1].field_0].field_768
        mem[_135 + 128] = stor6[stor6[idx + 1].field_0].field_1024
        mem[_135 + 160] = stor6[stor6[idx + 1].field_0].field_1280
        mem[_135 + 192] = stor6[stor6[idx + 1].field_0].field_1536
        mem[_135 + 224] = stor6[stor6[idx + 1].field_0].field_1792
        mem[_135 + 256] = bool(stor6[stor6[idx + 1].field_0].field_2048)
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _135
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _127 = mem[64]
    mem[mem[64]] = 32
    _128 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _128:
        _145 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_145 + 44 len 20]
        mem[t + 64] = mem[_145 + 64]
        mem[t + 96] = mem[_145 + 108 len 20]
        mem[t + 128] = mem[_145 + 140 len 20]
        mem[t + 160] = mem[_145 + 160]
        mem[t + 192] = mem[_145 + 192]
        mem[t + 224] = mem[_145 + 224]
        mem[t + 256] = bool(mem[_145 + 256])
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _127 + (288 * _128) + -mem[64] + 64
}



}
