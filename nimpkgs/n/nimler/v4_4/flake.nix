{
  description = ''Erlang/Elixir NIFs for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimler-v4_4.flake = false;
  inputs.src-nimler-v4_4.owner = "wltsmrz";
  inputs.src-nimler-v4_4.ref   = "refs/tags/v4.4";
  inputs.src-nimler-v4_4.repo  = "nimler";
  inputs.src-nimler-v4_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v4_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimler-v4_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}