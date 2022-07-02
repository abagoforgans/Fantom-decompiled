contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint256 settings;
mapping of uint8 stor102;
mapping of uint8 stor103;
mapping of uint8 stor104;
mapping of address fee;
mapping of uint256 feeValues;
mapping of address royaltiesProviders;
mapping of uint8 stor108;
array of struct stor109;

function feeValues(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return feeValues[arg1][arg2]
}

function nftEnables(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor102[arg1])
}

function nftQuoteEnables(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor103[arg1][arg2])
}

function feeBurnables(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor104[arg1][arg2])
}

function settings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return settings[arg1]
}

function owner() payable {
    return owner
}

function royaltiesProviders(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return royaltiesProviders[arg1][arg2]
}

function royaltiesBurnables(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor108[arg1][arg2])
}

function feeAddresses(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return fee[arg1][arg2]
}

function _fallback() payable {
    revert
}

function whenSettings(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != settings[arg1]:
        revert with 0, 'settings err'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setNftEnables(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102[address(arg1)] = uint8(arg2)
}

function checkEnableTrade(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor102[address(arg1)]:
        revert with 0, 'nft disable'
    if not stor103[address(arg1)][address(arg2)]:
        revert with 0, 'quote disable'
}

function setFee(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit SetFee(msg.sender, feeValues[address(arg1)][address(arg2)], arg3, arg1, arg2);
    feeValues[address(arg1)][address(arg2)] = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeeBurnAble(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit SetFeeBurnAble(msg.sender, bool(stor104[address(arg1)][address(arg2)]), arg3, arg1, arg2);
    stor104[address(arg1)][address(arg2)] = uint8(arg3)
}

function setRoyaltiesBurnable(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit SetRoyaltiesBurnable(msg.sender, bool(stor108[address(arg1)][address(arg2)]), arg3, arg1, arg2);
    stor108[address(arg1)][address(arg2)] = uint8(arg3)
}

function transferFeeAddress(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if fee[address(arg1)][address(arg2)] != msg.sender:
        if owner != msg.sender:
            revert with 0, 'forbidden'
    emit FeeAddressTransferred(fee[address(arg1)][address(arg2)], arg3, arg1, arg2);
    fee[address(arg1)][address(arg2)] = arg3
}

function setRoyaltiesProvider(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit SetRoyaltiesProvider(msg.sender, royaltiesProviders[address(arg1)][address(arg2)], arg3, arg1, arg2);
    royaltiesProviders[address(arg1)][address(arg2)] = arg3
}

function nftSettings(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor102[address(arg1)]), 
           bool(stor103[address(arg1)][address(arg2)]),
           fee[address(arg1)][address(arg2)],
           bool(stor104[address(arg1)][address(arg2)]),
           feeValues[address(arg1)][address(arg2)],
           royaltiesProviders[address(arg1)][address(arg2)],
           bool(stor108[address(arg1)][address(arg2)])
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
}

function sub_50258e48(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == bool(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        stor103[address(cd[4])][mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[68]))
        require idx < ('cd', 36).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(cd[4]), 109) + 1
        if not uint256(stor109[address(cd[4])][1][mem[(32 * idx) + 140 len 20]].field_0):
            require idx < ('cd', 36).length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(cd[4]), 109) + 1
            if not uint256(stor109[address(cd[4])][1][mem[(32 * idx) + 140 len 20]].field_0):
                uint256(stor109[address(cd[4])].field_0)++
                address(stor109[address(cd[4])][uint256(stor109[address(cd[4])].field_0)].field_0) = mem[(32 * idx) + 140 len 20]
                Mask(96, 0, stor109[address(cd[4])][uint256(stor109[address(cd[4])].field_0)].field_160) = 0
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(address(cd[4]), 109) + 1
                uint256(stor109[address(cd[4])][1][address(mem[(32 * idx) + 128])].field_0) = uint256(stor109[address(cd[4])].field_0)
        idx = idx + 1
        continue 
}

function sub_8b1497c6(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        _69 = mem[(32 * idx) + 128]
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        _74 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = settings[mem[(32 * idx) + 128]]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = _74
        emit UpdateSettings(mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160], _74, _69);
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 101
        settings[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        idx = idx + 1
        continue 
}

function sub_af7c7aca(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        _81 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        _83 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        if fee[address(cd[4])][address(mem[(32 * idx) + 128])] != msg.sender:
            if owner != msg.sender:
                revert with 0, 'forbidden'
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = fee[address(cd[4])][address(mem[(32 * idx) + 128])]
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = address(_83)
        emit FeeAddressTransferred(mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160], address(_83), address(cd[4]), address(_81));
        mem[0] = address(_81)
        mem[32] = sha3(address(cd[4]), 105)
        fee[address(cd[4])][address(_81)] = address(_83)
        idx = idx + 1
        continue 
}

function sub_cb840ae4(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _63 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _65 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 106)
        _68 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 106))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = uint256(stor[_68])
        mem[mem[64] + 64] = _65
        emit SetFee(msg.sender, uint256(stor[_68]), _65, address(cd[4]), address(_63));
        mem[0] = address(_63)
        mem[32] = sha3(address(cd[4]), 106)
        feeValues[address(cd[4])][address(_63)] = _65
        idx = idx + 1
        continue 
}

function sub_aa8ff9d7(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _63 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _65 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 104)
        _68 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 104))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = bool(uint8(stor[_68]))
        mem[mem[64] + 64] = bool(_65)
        emit SetFeeBurnAble(msg.sender, bool(uint8(stor[_68])), bool(_65), address(cd[4]), address(_63));
        mem[0] = address(_63)
        mem[32] = sha3(address(cd[4]), 104)
        stor104[address(cd[4])][address(_63)] = uint8(bool(_65))
        idx = idx + 1
        continue 
}

function sub_5e025094(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _63 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _65 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 108)
        _68 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 108))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = bool(uint8(stor[_68]))
        mem[mem[64] + 64] = bool(_65)
        emit SetRoyaltiesBurnable(msg.sender, bool(uint8(stor[_68])), bool(_65), address(cd[4]), address(_63));
        mem[0] = address(_63)
        mem[32] = sha3(address(cd[4]), 108)
        stor108[address(cd[4])][address(_63)] = uint8(bool(_65))
        idx = idx + 1
        continue 
}

function sub_b9164983(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _63 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _65 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 107)
        _68 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 107))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = address(stor[_68])
        mem[mem[64] + 64] = address(_65)
        emit SetRoyaltiesProvider(msg.sender, address(stor[_68]), address(_65), address(cd[4]), address(_63));
        mem[0] = address(_63)
        mem[32] = sha3(address(cd[4]), 107)
        royaltiesProviders[address(cd[4])][address(_63)] = address(_65)
        idx = idx + 1
        continue 
}

function getNftQuotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint256(stor109[address(arg1)].field_0) <= test266151307()
    if not uint256(stor109[address(arg1)].field_0):
        if var36002 >= var36001:
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 128] = 32
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 160] = uint256(stor109[address(arg1)].field_0)
            idx = 0
            s = (32 * uint256(stor109[address(arg1)].field_0)) + 192
            t = 128
            while idx < uint256(stor109[address(arg1)].field_0):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(stor109[address(arg1)].field_0)) + 128
               len (96 * uint256(stor109[address(arg1)].field_0)) + 64
        if var42001 >= uint256(stor[var42002]):
            revert with 0, 'EnumerableSet: index out of bounds'
        require var44002 < uint256(stor[var44003])
        require var50002 < uint256(stor109[address(arg1)].field_0)
        mem[(32 * var52001) + 128] = address(var52003)
        if var62002 < var62001:
            # nil
        else:
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 128] = 32
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 160] = uint256(stor109[address(arg1)].field_0)
            idx = 0
            s = (32 * uint256(stor109[address(arg1)].field_0)) + 192
            t = 128
            while idx < uint256(stor109[address(arg1)].field_0):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(stor109[address(arg1)].field_0)) + 128
               len (96 * uint256(stor109[address(arg1)].field_0)) + 64
    else:
        mem[128 len 32 * uint256(stor109[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(stor109[address(arg1)].field_0)]
        if var37002 >= var37001:
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 128] = 32
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 160] = uint256(stor109[address(arg1)].field_0)
            idx = 0
            s = (32 * uint256(stor109[address(arg1)].field_0)) + 192
            t = 128
            while idx < uint256(stor109[address(arg1)].field_0):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(stor109[address(arg1)].field_0)) + 128
               len (96 * uint256(stor109[address(arg1)].field_0)) + 64
        if var43001 >= uint256(stor[var43002]):
            revert with 0, 'EnumerableSet: index out of bounds'
        require var45002 < uint256(stor[var45003])
        require var51002 < uint256(stor109[address(arg1)].field_0)
        mem[(32 * var53001) + 128] = address(var53003)
        if var63002 < var63001:
            # nil
        else:
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 128] = 32
            mem[(32 * uint256(stor109[address(arg1)].field_0)) + 160] = uint256(stor109[address(arg1)].field_0)
            idx = 0
            s = (32 * uint256(stor109[address(arg1)].field_0)) + 192
            t = 128
            while idx < uint256(stor109[address(arg1)].field_0):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(stor109[address(arg1)].field_0)) + 128
               len (96 * uint256(stor109[address(arg1)].field_0)) + 64
}

function sub_30ba7378(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] == bool(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 160 >= 128 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 <= test266151307()
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 192 >= 160 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192 <= test266151307()
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 164).length) + 224 >= 192 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224 <= test266151307()
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    idx = 0
    s = cd[164] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224
    while idx < ('cd', 164).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require (32 * ('cd', 196).length) + 256 >= 224 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 256 <= test266151307()
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224] = ('cd', 196).length
    require calldata.size >= cd[196] + (32 * ('cd', 196).length) + 36
    idx = 0
    s = cd[196] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 256
    while idx < ('cd', 196).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    require (32 * ('cd', 228).length) + 288 >= 256 and (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + (32 * ('cd', 228).length) + 288 <= test266151307()
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + (32 * ('cd', 228).length) + 288
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 256] = ('cd', 228).length
    require calldata.size >= cd[228] + (32 * ('cd', 228).length) + 36
    idx = 0
    s = cd[228] + 36
    t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 288
    while idx < ('cd', 228).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'length err'
    if ('cd', 100).length != ('cd', 132).length:
        revert with 0, 'length err'
    if ('cd', 132).length != ('cd', 164).length:
        revert with 0, 'length err'
    if ('cd', 164).length != ('cd', 196).length:
        revert with 0, 'length err'
    if ('cd', 196).length != ('cd', 228).length:
        revert with 0, 'length err'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102[address(cd[4])] = uint8(bool(cd[36]))
    idx = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 68).length
        stor103[address(cd[4])][mem[(32 * idx) + 140 len 20]] = 1
        require idx < ('cd', 68).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(cd[4]), 109) + 1
        if not uint256(stor109[address(cd[4])][1][mem[(32 * idx) + 140 len 20]].field_0):
            require idx < ('cd', 68).length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(cd[4]), 109) + 1
            if not uint256(stor109[address(cd[4])][1][mem[(32 * idx) + 140 len 20]].field_0):
                uint256(stor109[address(cd[4])].field_0)++
                address(stor109[address(cd[4])][uint256(stor109[address(cd[4])].field_0)].field_0) = mem[(32 * idx) + 140 len 20]
                Mask(96, 0, stor109[address(cd[4])][uint256(stor109[address(cd[4])].field_0)].field_160) = 0
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = sha3(address(cd[4]), 109) + 1
                uint256(stor109[address(cd[4])][1][address(mem[(32 * idx) + 128])].field_0) = uint256(stor109[address(cd[4])].field_0)
        idx = idx + 1
        continue 
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 68).length
        _1118 = mem[(32 * idx) + 128]
        require idx < ('cd', 100).length
        _1120 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
        if fee[address(cd[4])][address(mem[(32 * idx) + 128])] != msg.sender:
            if owner != msg.sender:
                revert with 0, 'forbidden'
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + (32 * ('cd', 228).length) + 288] = fee[address(cd[4])][address(mem[(32 * idx) + 128])]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + (32 * ('cd', 228).length) + 320] = address(_1120)
        emit FeeAddressTransferred(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + (32 * ('cd', 228).length) + 288], address(_1120), address(cd[4]), address(_1118));
        mem[0] = address(_1118)
        mem[32] = sha3(address(cd[4]), 105)
        fee[address(cd[4])][address(_1118)] = address(_1120)
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 68).length != ('cd', 132).length:
        revert with 0, 'length err'
    idx = 0
    while idx < ('cd', 68).length:
        require idx < mem[96]
        _1215 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160]
        _1217 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 106)
        _1228 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 106))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = uint256(stor[_1228])
        mem[mem[64] + 64] = _1217
        emit SetFee(msg.sender, uint256(stor[_1228]), _1217, address(cd[4]), address(_1215));
        mem[0] = address(_1215)
        mem[32] = sha3(address(cd[4]), 106)
        feeValues[address(cd[4])][address(_1215)] = _1217
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]:
        revert with 0, 'length err'
    _1283 = mem[96]
    idx = 0
    while idx < _1283:
        require idx < mem[96]
        _1285 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 192]
        _1287 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 224]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 104)
        _1298 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 104))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = bool(uint8(stor[_1298]))
        mem[mem[64] + 64] = bool(_1287)
        emit SetFeeBurnAble(msg.sender, bool(uint8(stor[_1298])), bool(_1287), address(cd[4]), address(_1285));
        mem[0] = address(_1285)
        mem[32] = sha3(address(cd[4]), 104)
        stor104[address(cd[4])][address(_1285)] = uint8(bool(_1287))
        _1283 = mem[96]
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224]:
        revert with 0, 'length err'
    _1334 = mem[96]
    idx = 0
    while idx < _1334:
        require idx < mem[96]
        _1336 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 224]
        _1338 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 256]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 107)
        _1349 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 107))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = address(stor[_1349])
        mem[mem[64] + 64] = address(_1338)
        emit SetRoyaltiesProvider(msg.sender, address(stor[_1349]), address(_1338), address(cd[4]), address(_1336));
        mem[0] = address(_1336)
        mem[32] = sha3(address(cd[4]), 107)
        royaltiesProviders[address(cd[4])][address(_1336)] = address(_1338)
        _1334 = mem[96]
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 256]:
        revert with 0, 'length err'
    _1366 = mem[96]
    idx = 0
    while idx < _1366:
        require idx < mem[96]
        _1368 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 256]
        _1370 = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 288]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[32] = sha3(address(cd[4]), 108)
        _1373 = sha3(address(mem[(32 * idx) + 128]), sha3(address(cd[4]), 108))
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = bool(uint8(stor[_1373]))
        mem[mem[64] + 64] = bool(_1370)
        emit SetRoyaltiesBurnable(msg.sender, bool(uint8(stor[_1373])), bool(_1370), address(cd[4]), address(_1368));
        mem[0] = address(_1368)
        mem[32] = sha3(address(cd[4]), 108)
        stor108[address(cd[4])][address(_1368)] = uint8(bool(_1370))
        _1366 = mem[96]
        idx = idx + 1
        continue 
}



}
