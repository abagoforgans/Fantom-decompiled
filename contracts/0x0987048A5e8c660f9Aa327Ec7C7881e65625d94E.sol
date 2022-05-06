contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - sub_56b5f889(?)
#
mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function indexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(arg1)] < 1:
        revert with 0, 17
    return (stor0[address(arg1)] - 1)
}

function sub_efa94eab(?) payable {
    mem[64] = 96
    idx = 0
    while idx <= 255:
        mem[mem[64] + 4] = idx
        require ext_code.size(0x83e5f18da720119ff363cf63417628eb0e9fd523)
        staticcall 0x83e5f18da720119ff363cf63417628eb0e9fd523.coins(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
        _8 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_8] == mem[_8 + 12 len 20]
        if idx > -2:
            revert with 0, 17
        mem[0] = mem[_8 + 12 len 20]
        mem[32] = 0
        stor0[mem[0]] = idx + 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6744adc6(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == uint8(arg4)
    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(arg1):
        mem[96] = address(arg1)
        if stor0[address(arg1)] < 1:
            revert with 0, 17
        mem[128] = stor0[address(arg1)] - 1
        mem[160] = address(arg2)
        mem[0] = address(arg2)
        mem[32] = 0
        if stor0[address(arg2)] < 1:
            revert with 0, 17
        mem[192] = stor0[address(arg2)] - 1
        mem[224] = arg3
        mem[256] = uint8(arg4)
        mem[320] = uint64(arg1) << 96
        mem[352] = stor0[address(arg1)] - 1
        mem[384] = address(arg2)
        mem[416] = stor0[address(arg2)] - 1
        mem[448] = arg3
        mem[480] = uint8(arg4)
        mem[288] = 192
        mem[64] = 512
        mem[512] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
        mem[var52001] = this.address
        mem[var52001 + 32] = var52003
        mem[var52001 + 64] = 96
        mem[var54002] = 192
        if var42001 < var56003:
            mem[var42001 + var56002] = mem[var42001 + 320]
            var42001 = var42001 + 32
            continue 
        if var42001 > var56003:
            mem[var56002 + var56003] = 0
        require ext_code.size(0x328a7b4d538a2b3942653a9983fda3c12c571141)
        call 0x328a7b4d538a2b3942653a9983fda3c12c571141.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args mem[516 len ceil32(var56005) + var56008 - 484]
        if ext_call.success:
        if var56023 <= arg3:
            revert with 0, 'FAILED'
        if var56023 < arg3:
            revert with 0, 17
        mem[512] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
        mem[516] = this.address
        mem[548] = var56023 - arg3
        mem[580] = 96
        mem[612] = 192
        var42001 = 0
        continue 
    if address(arg1) != 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e:
        revert with 0, 'cToken unknown'
    mem[96] = address(arg1)
    if stor0[address(arg1)] < 1:
        revert with 0, 17
    mem[128] = stor0[address(arg1)] - 1
    mem[160] = address(arg2)
    mem[0] = address(arg2)
    mem[32] = 0
    if stor0[address(arg2)] < 1:
        revert with 0, 17
    mem[192] = stor0[address(arg2)] - 1
    mem[224] = arg3
    mem[256] = uint8(arg4)
    mem[320] = uint64(arg1) << 96
    mem[352] = stor0[address(arg1)] - 1
    mem[384] = address(arg2)
    mem[416] = stor0[address(arg2)] - 1
    mem[448] = arg3
    mem[480] = uint8(arg4)
    mem[288] = 192
    mem[64] = 512
    mem[512] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
    mem[var53001] = this.address
    mem[var53001 + 32] = var53003
    mem[var53001 + 64] = 96
    mem[var55002] = 192
    if var43001 < var57003:
        mem[var43001 + var57002] = mem[var43001 + 320]
        var43001 = var43001 + 32
        continue 
    if var43001 > var57003:
        mem[var57002 + var57003] = 0
    require ext_code.size(0x4c762a5df2fa02fe868f25359e0c259fb811cfe)
    call 0x04c762a5df2fa02fe868f25359e0c259fb811cfe.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args mem[516 len ceil32(var57005) + var57008 - 484]
    if ext_call.success:
    if var57023 <= arg3:
        revert with 0, 'FAILED'
    if var57023 < arg3:
        revert with 0, 17
    mem[512] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
    mem[516] = this.address
    mem[548] = var57023 - arg3
    mem[580] = 96
    mem[612] = 192
    var43001 = 0
    continue 
}



}
