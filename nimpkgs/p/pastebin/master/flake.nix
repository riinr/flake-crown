{
  description = ''Pastebin API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pastebin-master.flake = false;
  inputs.src-pastebin-master.owner = "achesak";
  inputs.src-pastebin-master.ref   = "refs/heads/master";
  inputs.src-pastebin-master.repo  = "nim-pastebin";
  inputs.src-pastebin-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pastebin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pastebin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}