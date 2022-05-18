contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
uint32 stor2;
address tombAddress;
address wftmAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address uniRouterAddress;
mapping of uint8 stor5;

function sub_13762bdc(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function operator() {
    return operatorAddress
}

function owner() {
    return owner
}

function uniRouter() {
    return uniRouterAddress
}

function tomb() {
    return address(tombAddress)
}

function wftm() {
    return wftmAddress
}

function _fallback() payable {
    revert
}

function isOperator() {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7fcd79c7(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor5[address(arg1)] = uint8(arg2)
}

function sub_45db00a5(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x736f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function sub_65bbacd9(?) {
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0x65bbacd9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ff87fc7c(?) {
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0xff87fc7c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_69356d47(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).'i5mG' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d1d31a37(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0x3f07d76a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e69abb7e(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0x75be5ae1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTaxRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0xc6d69a30 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBurnThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0x9d6b5f21 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTaxTiersTwap(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0x66206ce9 with:
         gas gas_remaining wei
        args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setTaxTiersRate(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).0xb87c5a4a with:
         gas gas_remaining wei
        args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_be94f86b(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(address(tombAddress))
    call address(tombAddress).excludeAddress(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_19db099d(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x726f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(address(tombAddress))
    call address(tombAddress).includeAddress(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function taxFreeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7341646472657373206e6f7420617070726f76656420666f72207461782066726565207472616e73666572,
                    mem[207 len 21]
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(tombAddress))
    if not ext_call.return_data[0]:
        call address(tombAddress).excludeAddress(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call address(tombAddress).0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(tombAddress))
        call address(tombAddress).includeAddress(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_1fc8858f(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'amounts can't be 0'
    if not msg.value:
        revert with 0, 'amounts can't be 0'
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(tombAddress))
    if not ext_call.return_data[0]:
        call address(tombAddress).excludeAddress(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if not uint8(stor4.field_160):
        call address(tombAddress).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(tombAddress))
        staticcall address(tombAddress).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, uniRouterAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(tombAddress))
            call address(tombAddress).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniRouterAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, uint32(stor2), arg1, 0, 0, msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
    else:
        if not stor5[msg.sender]:
            call address(tombAddress).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(tombAddress))
            staticcall address(tombAddress).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, uniRouterAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(tombAddress))
                call address(tombAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, uint32(stor2), arg1, 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
        else:
            call address(tombAddress).isAddressExcluded(address arg1) with:
                 gas gas_remaining wei
                args uniRouterAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(tombAddress))
            if not ext_call.return_data[0]:
                call address(tombAddress).excludeAddress(address arg1) with:
                     gas gas_remaining wei
                    args uniRouterAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            call address(tombAddress).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(tombAddress))
            staticcall address(tombAddress).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, uniRouterAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(tombAddress))
            if not ext_call.return_data[0]:
                call address(tombAddress).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uniRouterAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            call address(tombAddress).isAddressExcluded(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(tombAddress))
                call address(tombAddress).excludeAddress(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, uint32(stor2), arg1, 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(tombAddress))
            call address(tombAddress).isAddressExcluded(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(tombAddress))
                call address(tombAddress).includeAddress(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(tombAddress))
        call address(tombAddress).includeAddress(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    else:
        return 0
}

function sub_05a9b7f0(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'amounts can't be 0'
    if not arg2:
        revert with 0, 'amounts can't be 0'
    require ext_code.size(address(tombAddress))
    staticcall address(tombAddress).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, uniRouterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(tombAddress))
        call address(tombAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniRouterAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, uniRouterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wftmAddress)
        call wftmAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniRouterAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(tombAddress))
    if not ext_call.return_data[0]:
        call address(tombAddress).excludeAddress(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if not uint8(stor4.field_160):
        call address(tombAddress).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wftmAddress)
        call wftmAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args 0, uint32(stor2), wftmAddress, arg1, arg2, 0, 0, msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
    else:
        if not stor5[msg.sender]:
            call address(tombAddress).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wftmAddress)
            call wftmAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor2), wftmAddress, arg1, arg2, 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
        else:
            call address(tombAddress).isAddressExcluded(address arg1) with:
                 gas gas_remaining wei
                args uniRouterAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(tombAddress))
            if not ext_call.return_data[0]:
                call address(tombAddress).excludeAddress(address arg1) with:
                     gas gas_remaining wei
                    args uniRouterAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            call address(tombAddress).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wftmAddress)
            call wftmAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(tombAddress))
            call address(tombAddress).isAddressExcluded(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(tombAddress))
                call address(tombAddress).excludeAddress(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor2), wftmAddress, arg1, arg2, 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(address(tombAddress))
            call address(tombAddress).isAddressExcluded(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(tombAddress))
                call address(tombAddress).includeAddress(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    require ext_code.size(address(tombAddress))
    call address(tombAddress).isAddressExcluded(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(tombAddress))
        call address(tombAddress).includeAddress(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    else:
        return 0
}



}
