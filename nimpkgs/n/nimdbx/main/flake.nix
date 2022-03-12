{
  description = ''Fast persistent key-value store, based on libmdbx'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimdbx-main.flake = false;
  inputs.src-nimdbx-main.owner = "snej";
  inputs.src-nimdbx-main.ref   = "refs/heads/main";
  inputs.src-nimdbx-main.repo  = "nimdbx";
  inputs.src-nimdbx-main.type  = "github";
  
  inputs."nimterop".owner = "nim-nix-pkgs";
  inputs."nimterop".ref   = "master";
  inputs."nimterop".repo  = "nimterop";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimDBX-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NimDBX-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}