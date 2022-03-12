{
  description = ''Simple API wrapper for Mailcow'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mailcow-main.flake = false;
  inputs.src-mailcow-main.owner = "Vaipex";
  inputs.src-mailcow-main.ref   = "refs/heads/main";
  inputs.src-mailcow-main.repo  = "Mailcow-API";
  inputs.src-mailcow-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mailcow-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mailcow-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}