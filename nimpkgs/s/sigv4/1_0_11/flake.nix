{
  description = ''Amazon Web Services Signature Version 4'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sigv4-1_0_11.flake = false;
  inputs.src-sigv4-1_0_11.ref   = "refs/tags/1.0.11";
  inputs.src-sigv4-1_0_11.owner = "disruptek";
  inputs.src-sigv4-1_0_11.repo  = "sigv4";
  inputs.src-sigv4-1_0_11.type  = "github";
  
  inputs."nimsha2".owner = "nim-nix-pkgs";
  inputs."nimsha2".ref   = "master";
  inputs."nimsha2".repo  = "nimsha2";
  inputs."nimsha2".dir   = "master";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls".owner = "nim-nix-pkgs";
  inputs."balls".ref   = "master";
  inputs."balls".repo  = "balls";
  inputs."balls".dir   = "";
  inputs."balls".type  = "github";
  inputs."balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_0_11"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-sigv4-1_0_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}