{
  description = ''Easy to use Nim/Nimscript interop, for scripting logic in compiled binaries.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimscripter-master.flake = false;
  inputs.src-nimscripter-master.owner = "beef331";
  inputs.src-nimscripter-master.ref   = "refs/heads/master";
  inputs.src-nimscripter-master.repo  = "nimscripter";
  inputs.src-nimscripter-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Nimscripter-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Nimscripter-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}