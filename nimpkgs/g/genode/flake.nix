{
  description = ''System libraries for the Genode Operating System Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."genode-master".dir   = "master";
  inputs."genode-master".owner = "nim-nix-pkgs";
  inputs."genode-master".ref   = "master";
  inputs."genode-master".repo  = "genode";
  inputs."genode-master".type  = "github";
  inputs."genode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-20221020".dir   = "20221020";
  inputs."genode-20221020".owner = "nim-nix-pkgs";
  inputs."genode-20221020".ref   = "master";
  inputs."genode-20221020".repo  = "genode";
  inputs."genode-20221020".type  = "github";
  inputs."genode-20221020".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-20221020".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_07".dir   = "v18_07";
  inputs."genode-v18_07".owner = "nim-nix-pkgs";
  inputs."genode-v18_07".ref   = "master";
  inputs."genode-v18_07".repo  = "genode";
  inputs."genode-v18_07".type  = "github";
  inputs."genode-v18_07".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_07".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_08".dir   = "v18_08";
  inputs."genode-v18_08".owner = "nim-nix-pkgs";
  inputs."genode-v18_08".ref   = "master";
  inputs."genode-v18_08".repo  = "genode";
  inputs."genode-v18_08".type  = "github";
  inputs."genode-v18_08".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_08".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_08_0".dir   = "v18_08_0";
  inputs."genode-v18_08_0".owner = "nim-nix-pkgs";
  inputs."genode-v18_08_0".ref   = "master";
  inputs."genode-v18_08_0".repo  = "genode";
  inputs."genode-v18_08_0".type  = "github";
  inputs."genode-v18_08_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_08_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_11".dir   = "v18_11";
  inputs."genode-v18_11".owner = "nim-nix-pkgs";
  inputs."genode-v18_11".ref   = "master";
  inputs."genode-v18_11".repo  = "genode";
  inputs."genode-v18_11".type  = "github";
  inputs."genode-v18_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_11_0".dir   = "v18_11_0";
  inputs."genode-v18_11_0".owner = "nim-nix-pkgs";
  inputs."genode-v18_11_0".ref   = "master";
  inputs."genode-v18_11_0".repo  = "genode";
  inputs."genode-v18_11_0".type  = "github";
  inputs."genode-v18_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v18_11_1".dir   = "v18_11_1";
  inputs."genode-v18_11_1".owner = "nim-nix-pkgs";
  inputs."genode-v18_11_1".ref   = "master";
  inputs."genode-v18_11_1".repo  = "genode";
  inputs."genode-v18_11_1".type  = "github";
  inputs."genode-v18_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v18_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v19_02".dir   = "v19_02";
  inputs."genode-v19_02".owner = "nim-nix-pkgs";
  inputs."genode-v19_02".ref   = "master";
  inputs."genode-v19_02".repo  = "genode";
  inputs."genode-v19_02".type  = "github";
  inputs."genode-v19_02".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v19_02".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v19_05".dir   = "v19_05";
  inputs."genode-v19_05".owner = "nim-nix-pkgs";
  inputs."genode-v19_05".ref   = "master";
  inputs."genode-v19_05".repo  = "genode";
  inputs."genode-v19_05".type  = "github";
  inputs."genode-v19_05".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v19_05".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v20_11".dir   = "v20_11";
  inputs."genode-v20_11".owner = "nim-nix-pkgs";
  inputs."genode-v20_11".ref   = "master";
  inputs."genode-v20_11".repo  = "genode";
  inputs."genode-v20_11".type  = "github";
  inputs."genode-v20_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genode-v20_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genode-v20_11_1".dir   = "v20_11_1";
  inputs."genode-v20_11_1".owner = "nim-nix-pkgs";
  inputs."genode-v20_11_1".ref   = "master";
  inputs."genode-v20_11_1".repo  = "genode";
  inputs."genode-v20_11_1".type  = "github";
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