contract main {




// =====================  Runtime code  =====================


const sub_07344580(?) = 0x6310109f32a9545b25e02f9d7fa19fa3ff82428

const sub_6fa42261(?) = 57005

const vault = 0x64d5ed2fab773b8b698a41ceac9897f1c93018f


address owner;
address sub_11db8392Address;

function sub_11db8392(?) payable {
    return sub_11db8392Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
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

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_47b5c007(?) payable {
    require ext_code.size(sub_11db8392Address)
    staticcall sub_11db8392Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 0
            else:
                require ext_call.return_data[0]
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 10 * ext_call.return_data[0] / 1000
        else:
            require ext_call.return_data[0]
            if 340 * ext_call.return_data[0] / ext_call.return_data[0] != 340:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 340 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 0
            else:
                require ext_call.return_data[0]
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 340 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 10 * ext_call.return_data[0] / 1000
    else:
        require ext_call.return_data[0]
        if 650 * ext_call.return_data[0] / ext_call.return_data[0] != 650:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 650 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 0
            else:
                require ext_call.return_data[0]
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 650 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 10 * ext_call.return_data[0] / 1000
        else:
            require ext_call.return_data[0]
            if 340 * ext_call.return_data[0] / ext_call.return_data[0] != 340:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 650 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 340 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 0
            else:
                require ext_call.return_data[0]
                if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x64d5ed2fab773b8b698a41ceac9897f1c93018f, 650 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x6310109f32a9545b25e02f9d7fa19fa3ff82428, 340 * ext_call.return_data[0] / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_11db8392Address)
                call sub_11db8392Address.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 57005, 10 * ext_call.return_data[0] / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
