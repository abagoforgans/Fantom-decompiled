contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 sub_a10d961e;
mapping of struct bens;
mapping of uint8 stor3;
address sub_25a24085Address;
address sub_9f52b67fAddress;
uint256 sub_8b7567f0;

function sub_25a24085(?) payable {
    return sub_25a24085Address
}

function sub_8b7567f0(?) payable {
    return sub_8b7567f0
}

function airdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_9f52b67f(?) payable {
    return sub_9f52b67fAddress
}

function sub_a10d961e(?) payable {
    return sub_a10d961e
}

function bens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bens[arg1].field_0, bens[arg1].field_0, bens[arg1].field_120
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == 0x5c8403a2617aca5c86946e32e14148776e37f72a
    address(stor0.field_0) = arg1
}

function sub_32ad49bf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == address(stor0.field_0)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function getRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_9f52b67fAddress)
    staticcall sub_9f52b67fAddress.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if 0xb321c6207a215360ac376a816c44b77347d9dc53 != msg.sender:
        if 0x206c22dc9ee61612898018e01d7dac87aab97fb0 != msg.sender:
            require msg.sender == 0xcd7961852b972adef3724d5251fd9bdcdd80d138
    require ext_code.size(sub_25a24085Address)
    call sub_25a24085Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setBen(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require msg.sender == address(stor0.field_0)
    require arg2 <= 100000 * 10^18
    require not bens[address(arg1)].field_0
    require arg3 < block.number + 10^6
    require arg4 >= 100
    require arg4 <= 5000
    require sub_a10d961e < 6
    if arg3 >= block.number:
        if not bens[address(arg1)].field_88:
            bens[address(arg1)].field_88 = uint32(arg3)
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_88:
                bens[address(arg1)].field_88 = uint32(arg3)
    else:
        if not bens[address(arg1)].field_88:
            bens[address(arg1)].field_88 = uint32(block.number)
        if not bens[address(arg1)].field_0:
            if bens[address(arg1)].field_88:
                bens[address(arg1)].field_88 = uint32(block.number)
    bens[address(arg1)].field_0 = Mask(88, 0, arg2)
    bens[address(arg1)].field_120 = uint16(arg4)
    sub_a10d961e++
}

function claimAirdrop() payable {
    require ext_code.size(sub_9f52b67fAddress)
    staticcall sub_9f52b67fAddress.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(stor3[address(msg.sender)]) == 1
    require ext_call.return_data[0]
    require block.number > ext_call.return_data[0] + 3 * 10^6
    require (28 * 10^14 * block.number) + (-28 * 10^14 * ext_call.return_data[0]) - 8400 * 10^18 >= sub_8b7567f0
    if (28 * 10^14 * block.number) + (-28 * 10^14 * ext_call.return_data[0]) + -sub_8b7567f0 - 8400 * 10^18 >= 420 * 10^18:
        stor3[address(msg.sender)] = 0
        require ext_code.size(sub_25a24085Address)
        call sub_25a24085Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 420 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_8b7567f0 += 420 * 10^18
}

function init() payable {
    require not uint8(stor0.field_160)
    require msg.sender == 0x5c8403a2617aca5c86946e32e14148776e37f72a
    Mask(96, 0, stor0.field_160) = 1
    address(stor0.field_0) = msg.sender
    sub_25a24085Address = 0x5658a207a56aa2d6b2821883d373f59ac6a2fc3
    sub_9f52b67fAddress = 0x2f31e7527e69d235bf77b514dd5230941e6a9855
    require msg.sender == address(stor0.field_0)
    require not bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_0
    require 0 < block.number + 10^6
    require sub_a10d961e < 6
    if 0 >= block.number:
        if not bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88:
            bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88 = 0
        if not bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_0:
            if bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88:
                bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88 = 0
    else:
        if not bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88:
            bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88 = uint32(block.number)
        if not bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_0:
            if bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88:
                bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_88 = uint32(block.number)
    bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_0 = 0
    bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_16 = 1525878906250 * 10^6
    bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_80 = 0
    bens[0x2d9f853f1a71d0635e64fcc4779269a05bcce2e2].field_120 = 5000
    sub_a10d961e++
}

function getBenRewards() payable {
    require ext_code.size(sub_9f52b67fAddress)
    staticcall sub_9f52b67fAddress.genesisBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if bens[address(msg.sender)].field_88 >= ext_call.return_data[0]:
        require bens[address(msg.sender)].field_88 > block.number
        if block.number / 75 * 10^6 <= 1:
            bens[address(msg.sender)].field_88 = uint32(block.number)
            bens[address(msg.sender)].field_0 = Mask(88, 0, bens[address(msg.sender)].field_0 - (33330 * 10^6 * block.number * bens[address(msg.sender)].field_120) + (33330 * 10^6 * bens[address(msg.sender)].field_88 * bens[address(msg.sender)].field_120))
            if not bens[address(msg.sender)].field_0:
                sub_a10d961e--
            require ext_code.size(sub_25a24085Address)
            call sub_25a24085Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (33330 * 10^6 * block.number * bens[address(msg.sender)].field_120) - (33330 * 10^6 * bens[address(msg.sender)].field_88 * bens[address(msg.sender)].field_120)
        else:
            idx = 1
            s = 33330 * 10^6
            while idx < block.number / 75 * 10^6:
                idx = idx + 1
                s = 3 * s / 4
                continue 
            bens[address(msg.sender)].field_88 = uint32(block.number)
            bens[address(msg.sender)].field_0 = Mask(88, 0, bens[address(msg.sender)].field_0 - (33329999746 * block.number * bens[address(msg.sender)].field_120) - (254 * block.number / 75 * 10^6 * block.number * bens[address(msg.sender)].field_120) + (33329999746 * bens[address(msg.sender)].field_88 * bens[address(msg.sender)].field_120) + (254 * block.number / 75 * 10^6 * bens[address(msg.sender)].field_88 * bens[address(msg.sender)].field_120))
            if not bens[address(msg.sender)].field_0:
                sub_a10d961e--
            require ext_code.size(sub_25a24085Address)
            call sub_25a24085Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (33329999746 * block.number * bens[address(msg.sender)].field_120) + (254 * block.number / 75 * 10^6 * block.number * bens[address(msg.sender)].field_120) - (33329999746 * bens[address(msg.sender)].field_88 * bens[address(msg.sender)].field_120) - (254 * block.number / 75 * 10^6 * bens[address(msg.sender)].field_88 * bens[address(msg.sender)].field_120)
    else:
        require ext_call.return_data[0] > block.number
        if block.number / 75 * 10^6 <= 1:
            bens[address(msg.sender)].field_88 = uint32(block.number)
            bens[address(msg.sender)].field_0 = Mask(88, 0, bens[address(msg.sender)].field_0 - (33330 * 10^6 * block.number * bens[address(msg.sender)].field_120) + (33330 * 10^6 * ext_call.return_data[0] * bens[address(msg.sender)].field_120))
            if not bens[address(msg.sender)].field_0:
                sub_a10d961e--
            require ext_code.size(sub_25a24085Address)
            call sub_25a24085Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (33330 * 10^6 * block.number * bens[address(msg.sender)].field_120) - (33330 * 10^6 * ext_call.return_data[0] * bens[address(msg.sender)].field_120)
        else:
            idx = 1
            s = 33330 * 10^6
            while idx < block.number / 75 * 10^6:
                idx = idx + 1
                s = 3 * s / 4
                continue 
            bens[address(msg.sender)].field_88 = uint32(block.number)
            bens[address(msg.sender)].field_0 = Mask(88, 0, bens[address(msg.sender)].field_0 - (33329999746 * block.number * bens[address(msg.sender)].field_120) - (254 * block.number / 75 * 10^6 * block.number * bens[address(msg.sender)].field_120) + (33329999746 * ext_call.return_data[0] * bens[address(msg.sender)].field_120) + (254 * block.number / 75 * 10^6 * ext_call.return_data[0] * bens[address(msg.sender)].field_120))
            if not bens[address(msg.sender)].field_0:
                sub_a10d961e--
            require ext_code.size(sub_25a24085Address)
            call sub_25a24085Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (33329999746 * block.number * bens[address(msg.sender)].field_120) + (254 * block.number / 75 * 10^6 * block.number * bens[address(msg.sender)].field_120) - (33329999746 * ext_call.return_data[0] * bens[address(msg.sender)].field_120) - (254 * block.number / 75 * 10^6 * ext_call.return_data[0] * bens[address(msg.sender)].field_120)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
