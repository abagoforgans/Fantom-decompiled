contract main {




// =====================  Runtime code  =====================


const sub_000a08b0(?) = 0xcbc6a023eb975a1e2630223a7959988948e664f3

const sub_4e60860e(?) = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c

const sub_69e894f5(?) = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const sub_73ebee82(?) = eth.balance(this.address)

const sub_da0b7431(?) = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315

const OASIS = 0x39755357759ce0d7f32dc8dc45414cca409ae24e

const GST2 = 0xb3f879cb30fe243b4dfee438691c04

const WETH = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2


address owner;
address controllerAddress;
uint256 stor2; offset 4
uint256 stor2; offset 3
uint256 stor2; offset 2
uint256 stor2; offset 1
uint256 maxBuy;
uint256 buffer;
uint256 tokenCount;
uint256 sub_58973576;
uint8 sub_16d74413;
uint256 stor6;
mapping of address token;
array of uint256 tokenSymbol;
mapping of address sub_8a342517;
mapping of address sub_7fc0771b;

function sub_16d74413(?) {
    return bool(uint8(sub_16d74413))
}

function tokenSymbol(uint256 arg1) {
    return tokenSymbol[arg1][0 len tokenSymbol[arg1].length]
}

function sub_58973576(?) {
    return sub_58973576
}

function maxBuy() {
    return maxBuy
}

function sub_7fc0771b(?) {
    require calldata.size - 4 >= 32
    return sub_7fc0771b[arg1]
}

function sub_8a342517(?) {
    require calldata.size - 4 >= 32
    return sub_8a342517[arg1]
}

function owner() {
    return owner
}

function tokenAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    return token[arg1]
}

function tokenCount() {
    return tokenCount
}

function buffer() {
    return buffer
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
  stop
}

function sub_55b47b95(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buffer = arg1
}

function changeMaxBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    maxBuy = arg1
}

function sub_52c19a30(?) {
    if eth.balance(this.address) >= maxBuy:
        return maxBuy
    return eth.balance(this.address)
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    controllerAddress = arg1
}

function sub_24111cb5(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    sub_8a342517[arg2] = arg1
}

function withdrawAll() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ecf14956(?) {
    if owner != msg.sender:
        require msg.sender == controllerAddress
    if bool(uint8(sub_16d74413)) == bool(uint8(sub_16d74413)):
        uint256(stor6) = not bool(uint8(sub_16d74413)) or Mask(248, 8, uint256(stor6))
    if bool(uint8(sub_16d74413)) == not bool(uint8(sub_16d74413)):
        uint8(sub_16d74413) = uint8(bool(uint8(sub_16d74413)))
}

function sub_f46ac5a4(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(token[arg1])
    staticcall token[arg1].balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2361b002(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_7fc0771b[arg2])
    staticcall sub_7fc0771b[arg2].getEthToTokenInputPrice(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_270d772c(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_8a342517[arg2])
    staticcall sub_8a342517[arg2].getEthToTokenInputPrice(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_27744614(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_8a342517[arg2])
    staticcall sub_8a342517[arg2].getTokenToEthOutputPrice(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_67b47b34(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_7fc0771b[arg2])
    staticcall sub_7fc0771b[arg2].getTokenToEthOutputPrice(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8ebbf7cf(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(token[arg1])
    staticcall token[arg1].allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_84a9a3f3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrapWETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1f7d060a(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(token[arg1])
    call token[arg1].approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_e2383661(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(token[arg1])
    call token[arg1].transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_3d9fcd98(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_7fc0771b[arg2])
    call sub_7fc0771b[arg2].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args arg1, 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9d81942a(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg2])
    call sub_8a342517[arg2].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args arg1, 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_65f0ef22(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_7fc0771b[arg2])
    call sub_7fc0771b[arg2].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
       value arg1 wei
         gas gas_remaining wei
        args 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_be9922e8(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg2])
    call sub_8a342517[arg2].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
       value arg1 wei
         gas gas_remaining wei
        args 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0e72afb6(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.sender == owner:
        sub_8a342517[stor4] = arg2
    else:
        require msg.sender == controllerAddress
        sub_8a342517[stor4] = arg2
        if owner != msg.sender:
            require msg.sender == controllerAddress
    require ext_code.size(token[stor4 - 1])
    call token[stor4 - 1].approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 10000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_444719d7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_7fc0771b[arg1])
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(sub_16d74413)) == 1:
            staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (Mask(252, 0, stor2.field_4) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (maxBuy + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8a342517[arg1])
        staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_8a342517[arg1])
            call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value maxBuy wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(sub_7fc0771b[arg1])
            staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (uint255(stor2.field_1) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_8a342517[arg1])
                call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(sub_7fc0771b[arg1])
                staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (Mask(254, 0, stor2.field_2) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(sub_7fc0771b[arg1])
                    staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (Mask(253, 0, stor2.field_3) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    else:
        if bool(uint8(sub_16d74413)) == 1:
            staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 16) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 16)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (eth.balance(this.address) + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_8a342517[arg1])
        staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_8a342517[arg1])
            call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(sub_7fc0771b[arg1])
            staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 2) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_8a342517[arg1])
                call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(sub_7fc0771b[arg1])
                staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args ((eth.balance(this.address) / 4) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (eth.balance(this.address) / 4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(sub_7fc0771b[arg1])
                    staticcall sub_7fc0771b[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args ((eth.balance(this.address) / 8) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (eth.balance(this.address) / 8)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_8a342517[arg1])
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_8a342517[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token[arg1])
    staticcall token[arg1].balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_7fc0771b[arg1])
    call sub_7fc0771b[arg1].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_daca6256(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    if eth.balance(this.address) >= maxBuy:
        if bool(uint8(sub_16d74413)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (Mask(252, 0, stor2.field_4) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7fc0771b[arg1])
            staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args Mask(252, 0, stor2.field_4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (maxBuy + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7fc0771b[arg1])
        staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args maxBuy
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_7fc0771b[arg1])
            call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value maxBuy wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (uint255(stor2.field_1) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7fc0771b[arg1])
            staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args uint255(stor2.field_1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_7fc0771b[arg1])
                call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value uint255(stor2.field_1) wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (Mask(254, 0, stor2.field_2) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7fc0771b[arg1])
                staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args Mask(254, 0, stor2.field_2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_7fc0771b[arg1])
                    call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value Mask(254, 0, stor2.field_2) wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (Mask(253, 0, stor2.field_3) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_7fc0771b[arg1])
                    staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args Mask(253, 0, stor2.field_3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_7fc0771b[arg1])
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(253, 0, stor2.field_3) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value Mask(252, 0, stor2.field_4) wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    else:
        if bool(uint8(sub_16d74413)) == 1:
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 16) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7fc0771b[arg1])
            staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 16)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] > ext_call.return_data[0]
        staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args (eth.balance(this.address) + buffer)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7fc0771b[arg1])
        staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                gas gas_remaining wei
               args eth.balance(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            if owner != msg.sender:
                require msg.sender == controllerAddress
            require ext_code.size(sub_7fc0771b[arg1])
            call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 1, block.timestamp + 10000
        else:
            require ext_code.size(sub_8a342517[arg1])
            staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args ((eth.balance(this.address) / 2) + buffer)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7fc0771b[arg1])
            staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                    gas gas_remaining wei
                   args (eth.balance(this.address) / 2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if owner != msg.sender:
                    require msg.sender == controllerAddress
                require ext_code.size(sub_7fc0771b[arg1])
                call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                   value eth.balance(this.address) / 2 wei
                     gas gas_remaining wei
                    args 1, block.timestamp + 10000
            else:
                require ext_code.size(sub_8a342517[arg1])
                staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args ((eth.balance(this.address) / 4) + buffer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7fc0771b[arg1])
                staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                        gas gas_remaining wei
                       args (eth.balance(this.address) / 4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_7fc0771b[arg1])
                    call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value eth.balance(this.address) / 4 wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 10000
                else:
                    require ext_code.size(sub_8a342517[arg1])
                    staticcall sub_8a342517[arg1].getTokenToEthOutputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args ((eth.balance(this.address) / 8) + buffer)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_7fc0771b[arg1])
                    staticcall sub_7fc0771b[arg1].getEthToTokenInputPrice(uint256 rg1) with:
                            gas gas_remaining wei
                           args (eth.balance(this.address) / 8)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if owner != msg.sender:
                        require msg.sender == controllerAddress
                    require ext_code.size(sub_7fc0771b[arg1])
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 8 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
                    else:
                        call sub_7fc0771b[arg1].ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                           value eth.balance(this.address) / 16 wei
                             gas gas_remaining wei
                            args 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token[arg1])
    staticcall token[arg1].balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        require msg.sender == controllerAddress
    require ext_code.size(sub_8a342517[arg1])
    call sub_8a342517[arg1].tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, block.timestamp + 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
