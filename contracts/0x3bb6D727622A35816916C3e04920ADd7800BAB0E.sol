contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address nativeAddress;
address wantAddress;
address sub_f945e300Address;
address unirouterAddress;
array of address nativeToWantRoute;
array of address sub_5e75b69e;
mapping of uint256 sub_5c627cef;
array of address stor7887053984229333715756243741084912719879447020693965939365260134600710199889;

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function unirouter() payable {
    return unirouterAddress
}

function nativeToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToWantRoute.length
    return address(nativeToWantRoute[arg1])
}

function sub_5c627cef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5c627cef[arg1]
}

function sub_5e75b69e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5e75b69e.length
    return sub_5e75b69e[arg1]
}

function owner() payable {
    return owner
}

function sub_f945e300(?) payable {
    return sub_f945e300Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3d2b18e5(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_f945e300Address)
    call sub_f945e300Address.0xde5f6268 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_641ada27(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_f945e300Address)
    call sub_f945e300Address.0x853828b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_534c7a79(?) payable {
    require ext_code.size(sub_f945e300Address)
    staticcall sub_f945e300Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_0d00ac5d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5e75b69e.length++
    stor116F[stor106.length] = address(arg1)
    if sub_5e75b69e.length < 1:
        revert with 0, 17
    sub_5c627cef[address(arg1)] = sub_5e75b69e.length - 1
    emit 0x9a53f778: address(arg1)
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit WithdrawToken(ext_call.return_data[0], arg1);
}

function sub_6374646d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 >= sub_5e75b69e.length:
        revert with 0, 'No vaults are being tracked.'
    if not sub_5c627cef[address(arg1)]:
        revert with 0, 'Vault is not being tracked.'
    if sub_5e75b69e.length < 1:
        revert with 0, 17
    if sub_5e75b69e.length - 1 >= sub_5e75b69e.length:
        revert with 0, 50
    sub_5c627cef[address(arg1)] = 0
    sub_5c627cef[stor106[stor106.length]] = sub_5c627cef[address(arg1)]
    if sub_5c627cef[address(arg1)] >= sub_5e75b69e.length:
        revert with 0, 50
    sub_5e75b69e[stor107[address(arg1)]] = sub_5e75b69e[sub_5e75b69e.length]
    if not sub_5e75b69e.length:
        revert with 0, 49
    sub_5e75b69e[sub_5e75b69e.length] = 0
    sub_5e75b69e.length--
    emit 0x9202ca76: address(arg1)
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nativeAddress)
    call nativeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nativeAddress)
    call nativeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args unirouterAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    unirouterAddress = arg1
}

function sub_0b3b08c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xa8c62e76 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1fe4a686 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Strategist buyback is not the strategist for the target vault'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc7b9d530 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72c4eec1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    nativeAddress = mem[140 len 20]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    wantAddress = mem[(32 * ('cd', 4).length - 1) + 140 len 20]
    nativeToWantRoute.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while nativeToWantRoute.length > idx:
            uint256(nativeToWantRoute[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(nativeToWantRoute[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while nativeToWantRoute.length > idx:
            uint256(nativeToWantRoute[idx]) = 0
            idx = idx + 1
            continue 
}

function harvest() payable {
    mem[100] = this.address
    require ext_code.size(nativeAddress)
    staticcall nativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = 0
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = nativeToWantRoute.length
    mem[0] = 105
    idx = 0
    s = ceil32(return_data.size) + 292
    t = 0
    while idx < nativeToWantRoute.length:
        mem[s] = address(nativeToWantRoute[t])
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = block.timestamp
    require ext_code.size(unirouterAddress)
    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, nativeToWantRoute.length, mem[ceil32(return_data.size) + 292 len 32 * nativeToWantRoute.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _27 = mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127
    _28 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _28
    require _27 + (32 * _28) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _28] = mem[ceil32(return_data.size) + _27 + 128 len 32 * _28]
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _46 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _47 = mem[_46]
    require ext_code.size(sub_f945e300Address)
    call sub_f945e300Address.0xde5f6268 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_f945e300Address)
    staticcall sub_f945e300Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    emit StratHarvest(_47, mem[_52], msg.sender);
}

function initialize(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    sub_f945e300Address = arg1
    unirouterAddress = arg2
    if 0 >= arg3.length:
        revert with 0, 50
    nativeAddress = mem[140 len 20]
    if arg3.length < 1:
        revert with 0, 17
    if arg3.length - 1 >= arg3.length:
        revert with 0, 50
    wantAddress = mem[(32 * arg3.length - 1) + 140 len 20]
    nativeToWantRoute.length = arg3.length
    if not arg3.length:
        idx = 0
        while nativeToWantRoute.length > idx:
            uint256(nativeToWantRoute[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            address(nativeToWantRoute[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while nativeToWantRoute.length > idx:
            uint256(nativeToWantRoute[idx]) = 0
            idx = idx + 1
            continue 
    require ext_code.size(nativeAddress)
    call nativeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args unirouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nativeAddress)
    call nativeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f945e300Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(wantAddress)
    call wantAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f945e300Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5e75b69e.length++
    stor116F[stor106.length] = 0
    if sub_5e75b69e.length < 1:
        revert with 0, 17
    sub_5c627cef[0] = sub_5e75b69e.length - 1
    emit 0x9a53f778 
    emit 0x0 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
