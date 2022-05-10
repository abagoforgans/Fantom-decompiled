contract main {




// =====================  Runtime code  =====================


#
#  - sub_a036c7b1(?)
#
address sub_0e3e3bd2Address;
uint32 stor2;
address owner;
uint256 stor2;
uint256 feeRate;

function sub_0e3e3bd2(?) {
    return sub_0e3e3bd2Address
}

function owner() {
    return address(owner)
}

function feeRate() {
    return feeRate
}

function _fallback() payable {
    revert
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    if arg1 >= 500:
        revert with 0, 'Invalid feeRate'
    feeRate = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Invalid'
    if not arg1:
        call address(owner) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
    else:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call address(owner) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'TransferHelper: ETH(HT/BNB)_TRANSFER_FAILED'
        else:
            mem[100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
            mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
            call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
}



}
