contract main {




// =====================  Runtime code  =====================


address sushiRouterAddress;
array of struct sub_6a0341b8;
address sub_eb0cdcbbAddress;

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1].field_0
}

function sushiRouter() payable {
    return sushiRouterAddress
}

function sub_eb0cdcbb(?) payable {
    return sub_eb0cdcbbAddress
}

function _fallback() payable {
    revert
}

function sub_ea555ef3(?) payable {
    require ext_code.size(sub_eb0cdcbbAddress)
    staticcall sub_eb0cdcbbAddress.test0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a08d520e(?) payable {
    require calldata.size - 4 >= 32
    if not sub_6a0341b8.length:
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args arg1, 64, sub_6a0341b8.length
    else:
        mem[196] = address(sub_6a0341b8.field_0)
        idx = 196
        s = 0
        while (32 * sub_6a0341b8.length) + 196 > idx + 32:
            mem[idx + 32] = sub_6a0341b8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args arg1, Array(len=sub_6a0341b8.length, data=mem[196 len 32 * sub_6a0341b8.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function execute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_6a0341b8.length:
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args arg1, 64, sub_6a0341b8.length
        if ext_call.success:
            emit 0xfd763367 
        else:
            if return_data.size < 68:
                if not return_data.size:
                    emit ReturnDataEvent(' ');
                else:
                    emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
            else:
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    if not return_data.size:
                        emit ReturnDataEvent(' ');
                    else:
                        emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
                else:
                    if not bool(36 <= return_data.size):
                        if not return_data.size:
                            emit ReturnDataEvent(' ');
                        else:
                            emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
                    else:
                        if 32 <= return_data.size:
                            emit CatchStringEvent(string rg1):
                                                  '',
                                                  None,
                        else:
                            if not return_data.size:
                                emit ReturnDataEvent(' ');
                            else:
                                emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
    else:
        mem[196] = address(sub_6a0341b8.field_0)
        idx = 196
        s = 0
        while (32 * sub_6a0341b8.length) + 196 > idx + 32:
            mem[idx + 32] = sub_6a0341b8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args arg1, Array(len=sub_6a0341b8.length, data=mem[196 len 32 * sub_6a0341b8.length])
        if ext_call.success:
            emit 0xfd763367 
        else:
            if return_data.size < 68:
                if not return_data.size:
                    emit ReturnDataEvent(' ');
                else:
                    emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
            else:
                if uint32(ext_call.return_data[0 len 4], 0) >> 224 != Error(string rg1):
                    if not return_data.size:
                        emit ReturnDataEvent(' ');
                    else:
                        emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
                else:
                    if not bool(36 <= return_data.size):
                        if not return_data.size:
                            emit ReturnDataEvent(' ');
                        else:
                            emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
                    else:
                        if 32 <= return_data.size:
                            emit CatchStringEvent(string rg1):
                                                  '',
                                                  None,
                        else:
                            if not return_data.size:
                                emit ReturnDataEvent(' ');
                            else:
                                emit ReturnDataEvent(Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size]));
}



}
