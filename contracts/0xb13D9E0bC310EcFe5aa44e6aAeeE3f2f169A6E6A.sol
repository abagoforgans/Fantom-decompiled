contract main {




// =====================  Runtime code  =====================


const name = 'Corrosion'

const decimals = 8

const symbol = 'ACIDIC'


uint256 totalSupply;
uint256 totalFrozen;
mapping of struct frozenOf;
uint256 stor3;
address stor4;

function totalSupply() payable {
    return totalSupply
}

function frozenOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return frozenOf[address(arg1)].field_512
}

function totalFrozen() payable {
    return totalFrozen
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(frozenOf[address(arg1)].field_0)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return frozenOf[address(arg1)][3][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512)
}

function dividendsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(192, 64, (stor3 * frozenOf[address(arg1)].field_512) - frozenOf[address(arg1)].field_1024) >> 64)
}

function whitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor4
    frozenOf[address(arg1)].field_0 = uint8(arg2)
    emit Whitelist(arg2, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    frozenOf[address(msg.sender)][3][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function allInfoFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply, 
           totalFrozen,
           frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512,
           frozenOf[address(arg1)].field_512,
           Mask(192, 64, (stor3 * frozenOf[address(arg1)].field_512) - frozenOf[address(arg1)].field_1024) >> 64
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require totalFrozen > 0
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg1
    frozenOf[address(msg.sender)].field_256 -= arg1
    require totalFrozen
    stor3 += arg1 << 64 / totalFrozen
    emit Transfer(arg1, msg.sender, this.address);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg1
    frozenOf[address(msg.sender)].field_256 -= arg1
    if totalFrozen <= 0:
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        emit Burn(arg1);
    else:
        require totalFrozen
        stor3 += Mask(192, 1, arg1) << 63 / totalFrozen
        emit Transfer((arg1 / 2), msg.sender, this.address);
        totalSupply -= arg1 / 2
        emit Transfer((arg1 / 2), msg.sender, 0);
        emit Burn((arg1 / 2));
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg2
    frozenOf[address(msg.sender)].field_256 -= arg2
    if totalSupply - (arg2 / 100) < 10^15:
        frozenOf[address(arg1)].field_256 += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if frozenOf[address(msg.sender)].field_0:
            frozenOf[address(arg1)].field_256 += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            frozenOf[address(arg1)].field_256 = frozenOf[address(arg1)].field_256 + arg2 - (arg2 / 100)
            emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
            if arg2 / 100 > 0:
                if totalFrozen <= 0:
                    totalSupply -= arg2 / 100
                    emit Transfer((arg2 / 100), msg.sender, 0);
                    emit Burn((arg2 / 100));
                else:
                    require totalFrozen
                    stor3 += Mask(192, 1, arg2 / 100) << 63 / totalFrozen
                    emit Transfer((arg2 / 100 / 2), msg.sender, this.address);
                    totalSupply -= arg2 / 100 / 2
                    emit Transfer((arg2 / 100 / 2), msg.sender, 0);
                    emit Burn((arg2 / 100 / 2));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require frozenOf[address(arg1)][3][address(msg.sender)].field_0 >= arg3
    frozenOf[address(arg1)][3][address(msg.sender)].field_0 -= arg3
    require frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512 >= arg3
    frozenOf[address(arg1)].field_256 -= arg3
    if totalSupply - (arg3 / 100) < 10^15:
        frozenOf[address(arg2)].field_256 += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if frozenOf[address(arg1)].field_0:
            frozenOf[address(arg2)].field_256 += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            frozenOf[address(arg2)].field_256 = frozenOf[address(arg2)].field_256 + arg3 - (arg3 / 100)
            emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
            if arg3 / 100 > 0:
                if totalFrozen <= 0:
                    totalSupply -= arg3 / 100
                    emit Transfer((arg3 / 100), arg1, 0);
                    emit Burn((arg3 / 100));
                else:
                    require totalFrozen
                    stor3 += Mask(192, 1, arg3 / 100) << 63 / totalFrozen
                    emit Transfer((arg3 / 100 / 2), arg1, this.address);
                    totalSupply -= arg3 / 100 / 2
                    emit Transfer((arg3 / 100 / 2), arg1, 0);
                    emit Burn((arg3 / 100 / 2));
    return 1
}

function bulkTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= cd[((32 * idx) + arg2 + 36)]
        frozenOf[address(msg.sender)].field_256 -= cd[((32 * idx) + arg2 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        if totalSupply - (cd[((32 * idx) + arg2 + 36)] / 100) < 10^15:
            frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 += cd[((32 * idx) + arg2 + 36)]
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        else:
            if frozenOf[address(msg.sender)].field_0:
                frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 += cd[((32 * idx) + arg2 + 36)]
                mem[96] = cd[((32 * idx) + arg2 + 36)]
                emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
            else:
                frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 = frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 + cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] / 100)
                mem[96] = cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] / 100)
                emit Transfer((cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] / 100)), msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
                if cd[((32 * idx) + arg2 + 36)] / 100 > 0:
                    if totalFrozen <= 0:
                        totalSupply -= cd[((32 * idx) + arg2 + 36)] / 100
                        emit Transfer((cd[((32 * idx) + arg2 + 36)] / 100), msg.sender, 0);
                        mem[96] = cd[((32 * idx) + arg2 + 36)] / 100
                        emit Burn((cd[((32 * idx) + arg2 + 36)] / 100));
                    else:
                        require totalFrozen
                        stor3 += Mask(192, 1, cd[((32 * idx) + arg2 + 36)] / 100) << 63 / totalFrozen
                        emit Transfer((cd[((32 * idx) + arg2 + 36)] / 100 / 2), msg.sender, this.address);
                        totalSupply -= cd[((32 * idx) + arg2 + 36)] / 100 / 2
                        emit Transfer((cd[((32 * idx) + arg2 + 36)] / 100 / 2), msg.sender, 0);
                        mem[96] = cd[((32 * idx) + arg2 + 36)] / 100 / 2
                        emit Burn((cd[((32 * idx) + arg2 + 36)] / 100 / 2));
        idx = idx + 1
        continue 
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg2
    frozenOf[address(msg.sender)].field_256 -= arg2
    if totalSupply - (arg2 / 100) < 10^15:
        frozenOf[address(arg1)].field_256 += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if uint32(ext_code.size(arg1)) > 0:
            mem[228 len arg3.length] = arg3[all]
            mem[arg3.length + 228] = 0
            require ext_code.size(arg1)
            call arg1.tokenCallback(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    else:
        if frozenOf[address(msg.sender)].field_0:
            frozenOf[address(arg1)].field_256 += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if uint32(ext_code.size(arg1)) > 0:
                mem[228 len arg3.length] = arg3[all]
                mem[arg3.length + 228] = 0
                require ext_code.size(arg1)
                call arg1.tokenCallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
        else:
            frozenOf[address(arg1)].field_256 = frozenOf[address(arg1)].field_256 + arg2 - (arg2 / 100)
            emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
            if arg2 / 100 > 0:
                if totalFrozen <= 0:
                    totalSupply -= arg2 / 100
                    emit Transfer((arg2 / 100), msg.sender, 0);
                    emit Burn((arg2 / 100));
                else:
                    require totalFrozen
                    stor3 += Mask(192, 1, arg2 / 100) << 63 / totalFrozen
                    emit Transfer((arg2 / 100 / 2), msg.sender, this.address);
                    totalSupply -= arg2 / 100 / 2
                    emit Transfer((arg2 / 100 / 2), msg.sender, 0);
                    emit Burn((arg2 / 100 / 2));
            if uint32(ext_code.size(arg1)) > 0:
                mem[228 len arg3.length] = arg3[all]
                mem[arg3.length + 228] = 0
                require ext_code.size(arg1)
                call arg1.tokenCallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg2 - (arg2 / 100), 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    return 1
}



}
