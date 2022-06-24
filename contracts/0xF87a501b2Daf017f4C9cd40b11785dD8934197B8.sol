contract main {




// =====================  Runtime code  =====================


const name = 'RarityFarms', 0

const symbol = 'BFARM', 0


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
uint256 yield;
uint32 sub_d939766a;
address stor3;
address sub_0c923d83Address; offset 32
address cornAddress;
address sub_0e357738Address;
address sub_fe86673cAddress;
address sub_a9300b1eAddress;

function sub_0c923d83(?) payable {
    return sub_0c923d83Address
}

function sub_0e357738(?) payable {
    return sub_0e357738Address
}

function yield() payable {
    return yield
}

function paused() payable {
    return bool(paused)
}

function pausers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function corn() payable {
    return cornAddress
}

function sub_a9300b1e(?) payable {
    return sub_a9300b1eAddress
}

function sub_d939766a(?) payable {
    return sub_d939766a
}

function sub_fe86673c(?) payable {
    return sub_fe86673cAddress
}

function _fallback() payable {
    revert
}

function pause() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Pause denied'
    stor0 = 1
    return 1
}

function unpause() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Unpause denied'
    stor0 = 0
    return 1
}

function setYield(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    yield = arg1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    owner = arg1
    return 1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor1[address(arg1)] = 1
}

function removePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor1[address(arg1)] = 0
}

function sub_75e3a9d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    sub_d939766a = uint32(arg1)
}

function sub_6240f0f4(?) payable {
    if owner != msg.sender:
        if sub_0c923d83Address != msg.sender:
            revert with 0, 'Must be owner or disaster'
    stor1[stor3] = 0
    sub_0c923d83Address = 0
    stor0 = 0
}

function sub_439e8cbf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor1[address(arg1)] = 1
    sub_0c923d83Address = address(arg1)
    yield = arg2
    stor0 = 1
}

function sub_d27e3645(?) payable {
    if yield < sub_d939766a:
        return 1
    if sub_d939766a and 2 > -1 / sub_d939766a:
        revert with 'NH{q', 17
    if yield < 2 * sub_d939766a:
        return 2
    if sub_d939766a and 3 > -1 / sub_d939766a:
        revert with 'NH{q', 17
    if yield < 3 * sub_d939766a:
        return 3
    if sub_d939766a and 4 > -1 / sub_d939766a:
        revert with 'NH{q', 17
    if yield >= 4 * sub_d939766a:
        return 5
    return 4
}

function sub_f516c297(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(paused) == 1:
        revert with 0, 'Farm not available'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if yield < sub_d939766a:
        require ext_code.size(cornAddress)
        call cornAddress.0x1b2ef1ca with:
             gas gas_remaining wei
            args arg1, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
            revert with 'NH{q', 17
        yield += ext_call.return_data[0] * ext_call.return_data[96]
        emit 0xe17b1776: cornAddress, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
    else:
        if sub_d939766a and 2 > -1 / sub_d939766a:
            revert with 'NH{q', 17
        if yield < 2 * sub_d939766a:
            require ext_code.size(cornAddress)
            call cornAddress.0x1b2ef1ca with:
                 gas gas_remaining wei
                args arg1, 2 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                revert with 'NH{q', 17
            yield += ext_call.return_data[0] * ext_call.return_data[96]
            emit 0xe17b1776: cornAddress, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
        else:
            if sub_d939766a and 3 > -1 / sub_d939766a:
                revert with 'NH{q', 17
            if yield < 3 * sub_d939766a:
                require ext_code.size(cornAddress)
                call cornAddress.0x1b2ef1ca with:
                     gas gas_remaining wei
                    args arg1, 3 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                yield += ext_call.return_data[0] * ext_call.return_data[96]
                emit 0xe17b1776: cornAddress, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
            else:
                if sub_d939766a and 4 > -1 / sub_d939766a:
                    revert with 'NH{q', 17
                require ext_code.size(cornAddress)
                if yield >= 4 * sub_d939766a:
                    call cornAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 5 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: cornAddress, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                else:
                    call cornAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 4 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: cornAddress, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
}

function sub_1efbd51a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(paused) == 1:
        revert with 0, 'Farm not available'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if yield < sub_d939766a:
        require ext_code.size(sub_a9300b1eAddress)
        call sub_a9300b1eAddress.0x1b2ef1ca with:
             gas gas_remaining wei
            args arg1, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
            revert with 'NH{q', 17
        yield += ext_call.return_data[0] * ext_call.return_data[96]
        emit 0xe17b1776: sub_a9300b1eAddress, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
    else:
        if sub_d939766a and 2 > -1 / sub_d939766a:
            revert with 'NH{q', 17
        if yield < 2 * sub_d939766a:
            require ext_code.size(sub_a9300b1eAddress)
            call sub_a9300b1eAddress.0x1b2ef1ca with:
                 gas gas_remaining wei
                args arg1, 2 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                revert with 'NH{q', 17
            yield += ext_call.return_data[0] * ext_call.return_data[96]
            emit 0xe17b1776: sub_a9300b1eAddress, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
        else:
            if sub_d939766a and 3 > -1 / sub_d939766a:
                revert with 'NH{q', 17
            if yield < 3 * sub_d939766a:
                require ext_code.size(sub_a9300b1eAddress)
                call sub_a9300b1eAddress.0x1b2ef1ca with:
                     gas gas_remaining wei
                    args arg1, 3 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                yield += ext_call.return_data[0] * ext_call.return_data[96]
                emit 0xe17b1776: sub_a9300b1eAddress, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
            else:
                if sub_d939766a and 4 > -1 / sub_d939766a:
                    revert with 'NH{q', 17
                require ext_code.size(sub_a9300b1eAddress)
                if yield >= 4 * sub_d939766a:
                    call sub_a9300b1eAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 5 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_a9300b1eAddress, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                else:
                    call sub_a9300b1eAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 4 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_a9300b1eAddress, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
}

function sub_7649dce5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(paused) == 1:
        revert with 0, 'Farm not available'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if yield < sub_d939766a:
        require ext_code.size(sub_fe86673cAddress)
        call sub_fe86673cAddress.0x1b2ef1ca with:
             gas gas_remaining wei
            args arg1, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
            revert with 'NH{q', 17
        yield += ext_call.return_data[0] * ext_call.return_data[96]
        emit 0xe17b1776: sub_fe86673cAddress, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
    else:
        if sub_d939766a and 2 > -1 / sub_d939766a:
            revert with 'NH{q', 17
        if yield < 2 * sub_d939766a:
            require ext_code.size(sub_fe86673cAddress)
            call sub_fe86673cAddress.0x1b2ef1ca with:
                 gas gas_remaining wei
                args arg1, 2 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                revert with 'NH{q', 17
            yield += ext_call.return_data[0] * ext_call.return_data[96]
            emit 0xe17b1776: sub_fe86673cAddress, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
        else:
            if sub_d939766a and 3 > -1 / sub_d939766a:
                revert with 'NH{q', 17
            if yield < 3 * sub_d939766a:
                require ext_code.size(sub_fe86673cAddress)
                call sub_fe86673cAddress.0x1b2ef1ca with:
                     gas gas_remaining wei
                    args arg1, 3 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                yield += ext_call.return_data[0] * ext_call.return_data[96]
                emit 0xe17b1776: sub_fe86673cAddress, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
            else:
                if sub_d939766a and 4 > -1 / sub_d939766a:
                    revert with 'NH{q', 17
                require ext_code.size(sub_fe86673cAddress)
                if yield >= 4 * sub_d939766a:
                    call sub_fe86673cAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 5 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_fe86673cAddress, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                else:
                    call sub_fe86673cAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 4 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_fe86673cAddress, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
}

function sub_cf4613c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(paused) == 1:
        revert with 0, 'Farm not available'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if yield < sub_d939766a:
        require ext_code.size(sub_0e357738Address)
        call sub_0e357738Address.0x1b2ef1ca with:
             gas gas_remaining wei
            args arg1, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
            revert with 'NH{q', 17
        yield += ext_call.return_data[0] * ext_call.return_data[96]
        emit 0xe17b1776: sub_0e357738Address, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
    else:
        if sub_d939766a and 2 > -1 / sub_d939766a:
            revert with 'NH{q', 17
        if yield < 2 * sub_d939766a:
            require ext_code.size(sub_0e357738Address)
            call sub_0e357738Address.0x1b2ef1ca with:
                 gas gas_remaining wei
                args arg1, 2 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                revert with 'NH{q', 17
            yield += ext_call.return_data[0] * ext_call.return_data[96]
            emit 0xe17b1776: sub_0e357738Address, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
        else:
            if sub_d939766a and 3 > -1 / sub_d939766a:
                revert with 'NH{q', 17
            if yield < 3 * sub_d939766a:
                require ext_code.size(sub_0e357738Address)
                call sub_0e357738Address.0x1b2ef1ca with:
                     gas gas_remaining wei
                    args arg1, 3 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                yield += ext_call.return_data[0] * ext_call.return_data[96]
                emit 0xe17b1776: sub_0e357738Address, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
            else:
                if sub_d939766a and 4 > -1 / sub_d939766a:
                    revert with 'NH{q', 17
                require ext_code.size(sub_0e357738Address)
                if yield >= 4 * sub_d939766a:
                    call sub_0e357738Address.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 5 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_0e357738Address, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                else:
                    call sub_0e357738Address.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 4 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_0e357738Address, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
}

function sub_bad6a14e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    if uint8(arg2) <= 0:
        revert with 0, 'Invalid Resource'
    if uint8(arg2) >= 5:
        revert with 0, 'Invalid Resource'
    if uint8(arg2) == 1:
        if bool(paused) == 1:
            revert with 0, 'Farm not available'
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if yield < sub_d939766a:
            require ext_code.size(cornAddress)
            call cornAddress.0x1b2ef1ca with:
                 gas gas_remaining wei
                args arg1, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                revert with 'NH{q', 17
            yield += ext_call.return_data[0] * ext_call.return_data[96]
            emit 0xe17b1776: cornAddress, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
        else:
            if sub_d939766a and 2 > -1 / sub_d939766a:
                revert with 'NH{q', 17
            if yield < 2 * sub_d939766a:
                require ext_code.size(cornAddress)
                call cornAddress.0x1b2ef1ca with:
                     gas gas_remaining wei
                    args arg1, 2 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                yield += ext_call.return_data[0] * ext_call.return_data[96]
                emit 0xe17b1776: cornAddress, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
            else:
                if sub_d939766a and 3 > -1 / sub_d939766a:
                    revert with 'NH{q', 17
                if yield < 3 * sub_d939766a:
                    require ext_code.size(cornAddress)
                    call cornAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 3 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: cornAddress, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                else:
                    if sub_d939766a and 4 > -1 / sub_d939766a:
                        revert with 'NH{q', 17
                    require ext_code.size(cornAddress)
                    if yield >= 4 * sub_d939766a:
                        call cornAddress.0x1b2ef1ca with:
                             gas gas_remaining wei
                            args arg1, 5 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                            revert with 'NH{q', 17
                        yield += ext_call.return_data[0] * ext_call.return_data[96]
                        emit 0xe17b1776: cornAddress, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                    else:
                        call cornAddress.0x1b2ef1ca with:
                             gas gas_remaining wei
                            args arg1, 4 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                            revert with 'NH{q', 17
                        yield += ext_call.return_data[0] * ext_call.return_data[96]
                        emit 0xe17b1776: cornAddress, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
    else:
        if uint8(arg2) == 2:
            if bool(paused) == 1:
                revert with 0, 'Farm not available'
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            if yield < sub_d939766a:
                require ext_code.size(sub_0e357738Address)
                call sub_0e357738Address.0x1b2ef1ca with:
                     gas gas_remaining wei
                    args arg1, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                    revert with 'NH{q', 17
                yield += ext_call.return_data[0] * ext_call.return_data[96]
                emit 0xe17b1776: sub_0e357738Address, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
            else:
                if sub_d939766a and 2 > -1 / sub_d939766a:
                    revert with 'NH{q', 17
                if yield < 2 * sub_d939766a:
                    require ext_code.size(sub_0e357738Address)
                    call sub_0e357738Address.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 2 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_0e357738Address, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                else:
                    if sub_d939766a and 3 > -1 / sub_d939766a:
                        revert with 'NH{q', 17
                    if yield < 3 * sub_d939766a:
                        require ext_code.size(sub_0e357738Address)
                        call sub_0e357738Address.0x1b2ef1ca with:
                             gas gas_remaining wei
                            args arg1, 3 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                            revert with 'NH{q', 17
                        yield += ext_call.return_data[0] * ext_call.return_data[96]
                        emit 0xe17b1776: sub_0e357738Address, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                    else:
                        if sub_d939766a and 4 > -1 / sub_d939766a:
                            revert with 'NH{q', 17
                        require ext_code.size(sub_0e357738Address)
                        if yield >= 4 * sub_d939766a:
                            call sub_0e357738Address.0x1b2ef1ca with:
                                 gas gas_remaining wei
                                args arg1, 5 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                revert with 'NH{q', 17
                            yield += ext_call.return_data[0] * ext_call.return_data[96]
                            emit 0xe17b1776: sub_0e357738Address, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                        else:
                            call sub_0e357738Address.0x1b2ef1ca with:
                                 gas gas_remaining wei
                                args arg1, 4 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                revert with 'NH{q', 17
                            yield += ext_call.return_data[0] * ext_call.return_data[96]
                            emit 0xe17b1776: sub_0e357738Address, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
        else:
            if uint8(arg2) == 3:
                if bool(paused) == 1:
                    revert with 0, 'Farm not available'
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[96]
                if yield < sub_d939766a:
                    require ext_code.size(sub_fe86673cAddress)
                    call sub_fe86673cAddress.0x1b2ef1ca with:
                         gas gas_remaining wei
                        args arg1, 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                        revert with 'NH{q', 17
                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                    emit 0xe17b1776: sub_fe86673cAddress, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                else:
                    if sub_d939766a and 2 > -1 / sub_d939766a:
                        revert with 'NH{q', 17
                    if yield < 2 * sub_d939766a:
                        require ext_code.size(sub_fe86673cAddress)
                        call sub_fe86673cAddress.0x1b2ef1ca with:
                             gas gas_remaining wei
                            args arg1, 2 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                            revert with 'NH{q', 17
                        yield += ext_call.return_data[0] * ext_call.return_data[96]
                        emit 0xe17b1776: sub_fe86673cAddress, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                    else:
                        if sub_d939766a and 3 > -1 / sub_d939766a:
                            revert with 'NH{q', 17
                        if yield < 3 * sub_d939766a:
                            require ext_code.size(sub_fe86673cAddress)
                            call sub_fe86673cAddress.0x1b2ef1ca with:
                                 gas gas_remaining wei
                                args arg1, 3 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                revert with 'NH{q', 17
                            yield += ext_call.return_data[0] * ext_call.return_data[96]
                            emit 0xe17b1776: sub_fe86673cAddress, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                        else:
                            if sub_d939766a and 4 > -1 / sub_d939766a:
                                revert with 'NH{q', 17
                            require ext_code.size(sub_fe86673cAddress)
                            if yield >= 4 * sub_d939766a:
                                call sub_fe86673cAddress.0x1b2ef1ca with:
                                     gas gas_remaining wei
                                    args arg1, 5 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                    revert with 'NH{q', 17
                                yield += ext_call.return_data[0] * ext_call.return_data[96]
                                emit 0xe17b1776: sub_fe86673cAddress, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                            else:
                                call sub_fe86673cAddress.0x1b2ef1ca with:
                                     gas gas_remaining wei
                                    args arg1, 4 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                    revert with 'NH{q', 17
                                yield += ext_call.return_data[0] * ext_call.return_data[96]
                                emit 0xe17b1776: sub_fe86673cAddress, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
            else:
                if uint8(arg2) == 4:
                    if bool(paused) == 1:
                        revert with 0, 'Farm not available'
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    require ext_call.return_data[96] == ext_call.return_data[96]
                    if yield < sub_d939766a:
                        require ext_code.size(sub_a9300b1eAddress)
                        call sub_a9300b1eAddress.0x1b2ef1ca with:
                             gas gas_remaining wei
                            args arg1, 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                            revert with 'NH{q', 17
                        yield += ext_call.return_data[0] * ext_call.return_data[96]
                        emit 0xe17b1776: sub_a9300b1eAddress, 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                    else:
                        if sub_d939766a and 2 > -1 / sub_d939766a:
                            revert with 'NH{q', 17
                        if yield < 2 * sub_d939766a:
                            require ext_code.size(sub_a9300b1eAddress)
                            call sub_a9300b1eAddress.0x1b2ef1ca with:
                                 gas gas_remaining wei
                                args arg1, 2 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                revert with 'NH{q', 17
                            yield += ext_call.return_data[0] * ext_call.return_data[96]
                            emit 0xe17b1776: sub_a9300b1eAddress, 2 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                        else:
                            if sub_d939766a and 3 > -1 / sub_d939766a:
                                revert with 'NH{q', 17
                            if yield < 3 * sub_d939766a:
                                require ext_code.size(sub_a9300b1eAddress)
                                call sub_a9300b1eAddress.0x1b2ef1ca with:
                                     gas gas_remaining wei
                                    args arg1, 3 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                                staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                    revert with 'NH{q', 17
                                yield += ext_call.return_data[0] * ext_call.return_data[96]
                                emit 0xe17b1776: sub_a9300b1eAddress, 3 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                            else:
                                if sub_d939766a and 4 > -1 / sub_d939766a:
                                    revert with 'NH{q', 17
                                require ext_code.size(sub_a9300b1eAddress)
                                if yield >= 4 * sub_d939766a:
                                    call sub_a9300b1eAddress.0x1b2ef1ca with:
                                         gas gas_remaining wei
                                        args arg1, 5 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                        revert with 'NH{q', 17
                                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                                    emit 0xe17b1776: sub_a9300b1eAddress, 5 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
                                else:
                                    call sub_a9300b1eAddress.0x1b2ef1ca with:
                                         gas gas_remaining wei
                                        args arg1, 4 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
                                    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if ext_call.return_data[0] and ext_call.return_data[96] > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if yield > (-1 * ext_call.return_data[0] * ext_call.return_data[96]) - 1:
                                        revert with 'NH{q', 17
                                    yield += ext_call.return_data[0] * ext_call.return_data[96]
                                    emit 0xe17b1776: sub_a9300b1eAddress, 4 * 10^18, ext_call.return_data[0] * ext_call.return_data[96], ext_call.return_data[0], ext_call.return_data[96], arg1
}



}
