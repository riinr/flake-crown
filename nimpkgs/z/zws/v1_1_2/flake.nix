{
  description = ''A command line interface for shortening URLs with ZWS instances'';
  inputs.src-zws-v1_1_2.flake = false;
  inputs.src-zws-v1_1_2.type = "github";
  inputs.src-zws-v1_1_2.owner = "zws-im";
  inputs.src-zws-v1_1_2.repo = "cli";
  inputs.src-zws-v1_1_2.ref = "refs/tags/v1.1.2";
  
  outputs = { self, nixpkgs, src-zws-v1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zws-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zws-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}