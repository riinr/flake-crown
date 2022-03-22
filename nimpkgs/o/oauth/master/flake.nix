{
  description = ''OAuth library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oauth-master.flake = false;
  inputs.src-oauth-master.ref   = "refs/heads/master";
  inputs.src-oauth-master.owner = "CORDEA";
  inputs.src-oauth-master.repo  = "oauth";
  inputs.src-oauth-master.type  = "github";
  
  inputs."sha1".owner = "nim-nix-pkgs";
  inputs."sha1".ref   = "master";
  inputs."sha1".repo  = "sha1";
  inputs."sha1".dir   = "";
  inputs."sha1".type  = "github";
  inputs."sha1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oauth-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oauth-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}