{
  description = ''Transport Services Interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-taps-20220921.flake = false;
  inputs.src-taps-20220921.ref   = "20220921";
  inputs.src-taps-20220921.owner = "~ehmry";
  inputs.src-taps-20220921.repo  = "nim_taps";
  inputs.src-taps-20220921.type  = "sourcehut";
  
  inputs."getdns".owner = "nim-nix-pkgs";
  inputs."getdns".ref   = "master";
  inputs."getdns".repo  = "getdns";
  inputs."getdns".dir   = "20220928";
  inputs."getdns".type  = "github";
  inputs."getdns".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getdns".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-taps-20220921"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-taps-20220921";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}