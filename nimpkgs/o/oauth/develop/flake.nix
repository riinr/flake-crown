{
  description = ''OAuth library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oauth-develop.flake = false;
  inputs.src-oauth-develop.ref   = "refs/heads/develop";
  inputs.src-oauth-develop.owner = "CORDEA";
  inputs.src-oauth-develop.repo  = "oauth";
  inputs.src-oauth-develop.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oauth-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oauth-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}