contract main {




// =====================  Runtime code  =====================


const totalBalance = eth.balance(this.address)


address stor0;
mapping of uint8 stor1;

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function removeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
}

function enableWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
}

function withdraw() {
    require msg.sender == stor0
    require ext_code.size(this.address)
    staticcall this.address.0xad7a672f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_be774a71(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require bool(stor1[msg.sender]) == 1
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
    call 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0xbe774a71 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x9b19251a(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require msg.sender == stor0
                stor0 = address(arg1)
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x3ccfd60b(?????):
                    require unknown_0x78c8cda7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require msg.sender == stor0
                    stor1[address(arg1)] = 0
                else:
                    require not msg.value
                    require msg.sender == stor0
                    require ext_code.size(this.address)
                    staticcall this.address.0xad7a672f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x9b19251a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor1[arg1])
            if unknown_0xad7a672f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return eth.balance(this.address)
            if uint32(call.func_hash) >> 224 != unknown_0xbe774a71(?????):
                require unknown_0xdd2015df(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require msg.sender == stor0
                stor1[address(arg1)] = 1
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 <= test266151307()
                require arg1 + 35 < calldata.size
                require arg1.length <= test266151307()
                require arg1 + (32 * arg1.length) + 36 <= calldata.size
                require bool(stor1[msg.sender]) == 1
                require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
                call 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0xbe774a71 with:
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
