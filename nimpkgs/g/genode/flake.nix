{
  description = ''System libraries for the Genode Operating System Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."genode-master".url = "path:./master";
  inputs."genode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_07".url = "path:./v18_07";
  inputs."genode-v18_07".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_07".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_08".url = "path:./v18_08";
  inputs."genode-v18_08".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_08".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_08_0".url = "path:./v18_08_0";
  inputs."genode-v18_08_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_08_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_11".url = "path:./v18_11";
  inputs."genode-v18_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_11_0".url = "path:./v18_11_0";
  inputs."genode-v18_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_11_1".url = "path:./v18_11_1";
  inputs."genode-v18_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v19_02".url = "path:./v19_02";
  inputs."genode-v19_02".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v19_02".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v19_05".url = "path:./v19_05";
  inputs."genode-v19_05".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v19_05".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v20_11".url = "path:./v20_11";
  inputs."genode-v20_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v20_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v20_11_1".url = "path:./v20_11_1";
  inputs."genode-v20_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v20_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}