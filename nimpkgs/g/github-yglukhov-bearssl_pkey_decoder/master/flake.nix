{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bearssl_pkey_decoder-master.flake = false;
  inputs.src-bearssl_pkey_decoder-master.ref   = "refs/heads/master";
  inputs.src-bearssl_pkey_decoder-master.owner = "yglukhov";
  inputs.src-bearssl_pkey_decoder-master.repo  = "bearssl_pkey_decoder";
  inputs.src-bearssl_pkey_decoder-master.type  = "github";
  
  inputs."bearssl".owner = "nim-nix-pkgs";
  inputs."bearssl".ref   = "master";
  inputs."bearssl".repo  = "bearssl";
  inputs."bearssl".dir   = "source";
  inputs."bearssl".type  = "github";
  inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bearssl_pkey_decoder-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bearssl_pkey_decoder-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}